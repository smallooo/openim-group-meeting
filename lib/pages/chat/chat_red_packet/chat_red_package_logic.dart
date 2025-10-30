import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:toklink/tk_app/features/balance/data/repositories/balance_repository.dart';
import 'package:toklink/tk_app/core/network/api_client.dart';

class ChatRedPacketLogic extends GetxController{
  var amount = 0.0.obs;
  final amountCtrl = TextEditingController();
  final blessingCtrl = TextEditingController();
  final numberCtrl = TextEditingController();
  var isGroup = false;
  var groupId = '';

  // 余额仓库实例，用于API调用
  BalanceRepository? _balanceRepository;

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
    await _balanceRepository!.getBalanceWalletFundSummary();
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


  // void getBalance() async {
    
  //   final resp = 


  // }

  void generateRedPacket() {
    // Logic to generate red packet
    final amountValue = amount.value;
    final blessingValue = blessingCtrl.text;

    if (amountValue > 0) {
      // Call API to generate red packet

    } else {
      // Show error message
    } 
  }
  
}