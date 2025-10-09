import 'package:get/get.dart';

class RechargeBalanceState {
  // 当前余额
  RxInt currentBalance = 0.obs;
  
  // 选中的充值选项索引
  RxInt selectedOptionIndex = (-1).obs;
  
  // 充值选项列表
  List<RechargeOption> rechargeOptions = [
    RechargeOption(
      points: 12,
      unitPrice: 'USD',
      description: '支付 USD获得12点,点数可以在平台兑换支付订阅费用、兑换奖品等站内行为',
    ),
    RechargeOption(
      points: 22,
      unitPrice: 'USD', 
      description: '支付 USD获得22点,点数可以在平台兑换支付订阅费用、兑换奖品等站内行为',
    ),
    RechargeOption(
      points: 32,
      unitPrice: 'USD',
      description: '支付 USD获得32点,点数可以在平台兑换支付订阅费用、兑换奖品等站内行为',
    ),
    RechargeOption(
      points: 42,
      unitPrice: 'USD',
      description: '支付 USD获得42点,点数可以在平台兑换支付订阅费用、兑换奖品等站内行为',
    ),
  ];
  
  // 是否同意协议
  RxBool agreeToTerms = false.obs;
  
  // 当前选中的充值选项
  RechargeOption? get selectedOption {
    if (selectedOptionIndex.value >= 0 && selectedOptionIndex.value < rechargeOptions.length) {
      return rechargeOptions[selectedOptionIndex.value];
    }
    return null;
  }
  
  // 实付款金额
  String get actualPayment {
    if (selectedOption != null) {
      return '${selectedOption!.points}.00 USDT';
    }
    return '0.00 USDT';
  }
  
  RechargeBalanceState() {
    ///Initialize variables
  }
}

class RechargeOption {
  final int points;
  final String unitPrice;
  final String description;
  
  RechargeOption({
    required this.points,
    required this.unitPrice,
    required this.description,
  });
}
