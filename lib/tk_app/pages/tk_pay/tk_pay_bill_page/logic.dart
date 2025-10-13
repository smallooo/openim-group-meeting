import 'package:get/get.dart';

import 'state.dart';

class TkPayBillPageLogic extends GetxController {
  final TkPayBillPageState state = TkPayBillPageState();

  @override
  void onReady() {
    super.onReady();
    // 初始化交易数据
    state.transactions = _getDummyTransactions();
    update();
  }

  /// 获取模拟交易数据
  List<Map<String, dynamic>> _getDummyTransactions() {
    return [
      {'icon': 'assets/images/tk_wallet/convenience_store.png', 'title': '便利店', 'date': '10月9日 09:21', 'amount': '-3.50'},
      {'icon': 'assets/images/tk_wallet/kfc.png', 'title': '肯德基', 'date': '10月9日 09:21', 'amount': '-14.00'},
      {'icon': 'assets/images/tk_wallet/subway.png', 'title': '地铁', 'date': '10月9日 09:21', 'amount': '-3.50'},
      {'icon': 'assets/images/tk_wallet/zhongmin_convenience_store.png', 'title': '中民便利店', 'date': '10月9日 09:21', 'amount': '-3.50'},
      {'icon': 'assets/images/tk_wallet/lanzhou_beef_noodles.png', 'title': '兰州牛肉拉面', 'date': '10月9日 09:21', 'amount': '-3.50'},
      {'icon': 'assets/images/tk_wallet/red_packet.png', 'title': '红包-转给土豆', 'date': '10月9日 09:21', 'amount': '-3.50'},
      {'icon': 'assets/images/tk_wallet/transfer.png', 'title': '转账-给冯交通', 'date': '10月9日 09:21', 'amount': '-3.50'},
    ];
  }
}
