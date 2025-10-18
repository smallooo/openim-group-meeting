import 'package:get/get.dart';

class VerifyPasswordState {
  // PIN码输入相关
  final RxString pinCode = ''.obs;
  final RxList<String> pinDigits = <String>[].obs;
  final RxBool isPinComplete = false.obs;
  
  // 生物识别相关
  final RxBool isBiometricEnabled = true.obs;
  final RxBool isBiometricAvailable = true.obs;
  
  // 验证状态
  final RxBool isVerifying = false.obs;
  final RxString errorMessage = ''.obs;
  
  // 支付信息
  final RxString walletOrderNo = ''.obs;
  final RxDouble paymentAmount = 0.0.obs;
  final RxInt currencyId = 7.obs;

  VerifyPasswordState() {
    ///Initialize variables
    _initializePinInput();
  }
  
  void _initializePinInput() {
    // 初始化6位PIN码输入框
    for (int i = 0; i < 6; i++) {
      pinDigits.add('');
    }
  }
  
  void updatePinDigit(int index, String digit) {
    if (index < pinDigits.length) {
      pinDigits[index] = digit;
      pinCode.value = pinDigits.join();
      isPinComplete.value = pinCode.value.length == 6;
    }
  }
  
  void clearPinCode() {
    pinCode.value = '';
    for (int i = 0; i < pinDigits.length; i++) {
      pinDigits[i] = '';
    }
    isPinComplete.value = false;
  }
  
  void toggleBiometric() {
    isBiometricEnabled.value = !isBiometricEnabled.value;
  }
  
  void setVerifying(bool verifying) {
    isVerifying.value = verifying;
  }
  
  void setError(String error) {
    errorMessage.value = error;
  }
  
  void clearError() {
    errorMessage.value = '';
  }
  
  void setPaymentInfo(String orderNo, double amount, int currency) {
    walletOrderNo.value = orderNo;
    paymentAmount.value = amount;
    currencyId.value = currency;
  }
}
