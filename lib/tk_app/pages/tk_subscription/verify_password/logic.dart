import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../routes/app_pages.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'model/payment_verify_models.dart';
import 'state.dart';

class VerifyPasswordLogic extends GetxController {
  final VerifyPasswordState state = VerifyPasswordState();
  
  // 管理TextField的控制器
  TextEditingController? _pinController;
  
  // Dio实例
  late Dio _dio;
  
  @override
  void onInit() {
    super.onInit();
    // 初始化时清除错误信息
    state.clearError();
    
    // 初始化TextEditingController
    _pinController = TextEditingController();
    
    // 初始化Dio
    _initDio();
    
    // 初始化支付信息
    _initializePaymentInfo();
  }
  
  void _initDio() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));
  }
  
  void _initializePaymentInfo() {
    final arguments = Get.arguments;
    if (arguments != null && arguments is Map<String, dynamic>) {
      final thirdPartyOrderNo = arguments['thirdPartyOrderNo']?.toString() ?? '';
      final amount = (arguments['amount'] as num?)?.toDouble() ?? 0.0;
      final currencyId = (arguments['currencyId'] as int?) ?? 7;
      
      state.setPaymentInfo(thirdPartyOrderNo, amount, currencyId);
    }
  }
  
  @override
  void onClose() {
    // 确保控制器被正确清理
    if (_pinController != null) {
      _pinController!.dispose();
      _pinController = null;
    }
    super.onClose();
  }
  
  // 获取TextEditingController
  TextEditingController get pinController {
    if (_pinController == null) {
      _pinController = TextEditingController();
    }
    return _pinController!;
  }
  
  // 处理PIN码输入
  void onPinChanged(String value) {
    // 只允许数字输入
    String numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (numericValue.length <= 6) {
      // 更新PIN码
      state.clearPinCode();
      for (int i = 0; i < numericValue.length; i++) {
        state.updatePinDigit(i, numericValue[i]);
      }
    }
  }
  
  // 更新PIN码输入
  void updatePinDigit(int index, String digit) {
    state.updatePinDigit(index, digit);
    state.clearError(); // 清除之前的错误信息
  }
  
  // 删除PIN码
  void deletePinDigit() {
    for (int i = state.pinDigits.length - 1; i >= 0; i--) {
      if (state.pinDigits[i].isNotEmpty) {
        state.updatePinDigit(i, '');
        break;
      }
    }
  }
  
  // 切换生物识别
  void toggleBiometric() {
    state.toggleBiometric();
  }
  
  // 验证PIN码
  Future<void> verifyPinCode() async {
    if (!state.isPinComplete.value) {
      state.setError('请输入完整的PIN码');
      return;
    }
    
    state.setVerifying(true);
    state.clearError();
    
    try {
      // 调用支付验证接口
      await _verifyPayment();
    } catch (e) {
      state.setError('PIN码验证失败，请重试');
    } finally {
      state.setVerifying(false);
    }
  }
  
  // 支付验证接口调用
  Future<void> _verifyPayment() async {
    try {
      // 获取访问令牌
      final token = await TokenAccessHelper.getAccessToken();
      if (token == null) {
        state.setError('请先登录');
        return;
      }
      
      // 构建请求参数
      final request = PaymentVerifyRequest(
        paymentPassword: state.pinCode.value,
        walletOrderNo: state.walletOrderNo.value,
        amount: state.paymentAmount.value,
        currencyId: state.currencyId.value,
      );
      print(request);
      // 发送请求
      final response = await _dio.post(
        ApiConstants.paymentVerify,
        data: request.toJson(),
        options: Options(
          headers: {
            'Access-Token': token,
            'Content-Type': 'application/json',
          },
        ),
      );
      
      // 解析响应
      final paymentResponse = PaymentVerifyResponse.fromJson(response.data);
      
      if (paymentResponse.errCode == 0) {
        // 支付成功，跳转到支付成功页面并传递数据
        Get.offNamed(
          AppRoutes.paymentSuccess,
          arguments: {
            'amount': paymentResponse.data?.amount?.toString() ?? '0',
            'currency': _getCurrencyName(paymentResponse.data?.currencyId ?? 7),
            'transactionId': paymentResponse.data?.walletOrderNo ?? '',
            'transactionTime': _formatPaymentTime(paymentResponse.data?.paymentTime ?? ''),
            'userBalance': paymentResponse.data?.userBalance?.toString() ?? '0',
            'status': paymentResponse.data?.status ?? '',
            'partnerOrderNo': paymentResponse.data?.partnerOrderNo ?? '',
            'createTime': _formatPaymentTime(paymentResponse.data?.createTime ?? ''),
          },
        );
      } else {
        // 支付失败，显示错误信息
        state.setError(paymentResponse.errMsg);
      }
    } catch (e) {
      debugPrint('[VerifyPassword] 支付验证失败: $e');
      if (e is DioException) {
        if (e.response?.data != null) {
          try {
            final errorResponse = PaymentVerifyResponse.fromJson(e.response!.data);
            state.setError(errorResponse.errMsg);
          } catch (parseError) {
            state.setError('支付验证失败，请重试');
          }
        } else {
          state.setError('网络错误，请检查网络连接');
        }
      } else {
        state.setError('支付验证失败，请重试');
      }
    }
  }
  
  // 生物识别验证
  Future<void> verifyBiometric() async {
    if (!state.isBiometricEnabled.value) {
      state.setError('请先启用生物识别');
      return;
    }
    
    state.setVerifying(true);
    state.clearError();
    
    try {
      // TODO: 实现实际的生物识别验证逻辑
      await Future.delayed(const Duration(seconds: 1)); // 模拟生物识别
      
      // 验证成功，跳转到支付进度页面
      Get.offNamed(AppRoutes.paymentProgress);
    } catch (e) {
      state.setError('生物识别验证失败，请重试');
    } finally {
      state.setVerifying(false);
    }
  }
  
  // 执行验证（总是使用PIN码验证）
  Future<void> performVerification() async {
    await verifyPinCode();
  }
  
  /// 获取货币名称
  String _getCurrencyName(int currencyId) {
    switch (currencyId) {
      case 7:
        return 'USDT';
      case 1:
        return 'USD';
      case 2:
        return 'CNY';
      default:
        return 'USDT';
    }
  }
  
  /// 格式化支付时间
  String _formatPaymentTime(String timestamp) {
    try {
      if (timestamp.isEmpty) return '';
      
      // 将时间戳转换为毫秒
      final int timestampMs = int.parse(timestamp);
      final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestampMs);
      
      // 格式化为中文格式
      return '${dateTime.year}年${dateTime.month.toString().padLeft(2, '0')}月${dateTime.day.toString().padLeft(2, '0')}日 ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
    } catch (e) {
      return timestamp;
    }
  }
}
