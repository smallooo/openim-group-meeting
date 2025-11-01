import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:toklink/tk_app/features/balance/data/repositories/balance_repository.dart';
import 'package:toklink/tk_app/core/network/api_client.dart';
import 'package:decimal/decimal.dart';
import 'package:toklink_balance_sdk/api.dart' as api;

class ChatRedPacketLogic extends GetxController{
  var amount = 0.0.obs;
  final amountCtrl = TextEditingController();
  final blessingCtrl = TextEditingController();
  final numberCtrl = TextEditingController();
  var isGroup = false;
  var groupId = '';

  // 余额仓库实例，用于API调用
  BalanceRepository? _balanceRepository;

  final usdtAvailable = Rx<Decimal>(Decimal.zero);

  @override
  void onInit() {
    super.onInit();
    amountCtrl.addListener(_onAmountChanged);
    isGroup = Get.arguments['isGroup'] ?? false;
    groupId= Get.arguments['groupId'] ;
    

    _initializeAndLoadSummary();
  }


  /// 初始化钱包仓库并加载资金
  Future<void> _initializeAndLoadSummary() async {
    await _initializeRepository();
    await loadWalletFundSummary();
  }


   /// 初始化钱包仓库
  Future<void> _initializeRepository() async {
    try {
      // 使用循环等待直到ApiClient依赖准备就绪
      int attempts = 0;
      const maxAttempts = 10;
      
      while (attempts < maxAttempts) {
        try {
          final apiClient = Get.find<ApiClient>();
          _balanceRepository = BalanceRepository(apiClient);
          print('TkPayWalletLogic: 钱包仓库初始化成功'); // 调试信息
          return;
        } catch (e) {
          attempts++;
          if (attempts >= maxAttempts) {
            throw Exception('无法获取 ApiClient，已达到最大重试次数: $e');
          }
          // 等待一段时间后重试，逐渐增加等待时间
          await Future.delayed(Duration(milliseconds: 100 * attempts));
        }
      }
    } catch (e) {
      print('TkPayWalletLogic: 钱包仓库初始化失败: $e'); // 调试信息
    }
  }

  /// 加载钱包资金
   Future<void> loadWalletFundSummary() async {
    try {
      final list = await _balanceRepository!.getBalanceWalletFundSummary();
      // 查找 USDT
      Decimal found = Decimal.zero;
      for (final item in list) {
        if (item.currencyName.toUpperCase() == 'USDT') {
          found = item.availableAmount;
          break;
        }
      }
      usdtAvailable.value = found;
      debugPrint('USDT availableAmount: ${usdtAvailable.value}');
    } catch (e) {
      debugPrint('loadWalletFundSummary error: $e');
    }
  }

    void createSingleRedPacket() async {

      var dto = api.CreateRedPacketDTO(
        blessing: blessingCtrl.text,
        groupId: groupId.isEmpty ? null : int.parse(groupId),
        packetType: 1,
        currencyId: 3,
        totalCount: isGroup ? int.parse(numberCtrl.text) : 1,
        totalAmount: double.parse(amountCtrl.text),
      );

      await _balanceRepository!.createRedPacket(dto);
    }





  void _onAmountChanged() {
  final text = amountCtrl.text;
  if (text.isEmpty || text == ".") {
    amount.value = 0.0;
    return;
  }
  double? value = double.tryParse(text);
  if (value != null) {
    amount.value = value;
  }
}

  @override
  void onClose() {
    amountCtrl.removeListener(_onAmountChanged);
    amountCtrl.dispose();
    blessingCtrl.dispose();
    super.onClose();
  }
  
}