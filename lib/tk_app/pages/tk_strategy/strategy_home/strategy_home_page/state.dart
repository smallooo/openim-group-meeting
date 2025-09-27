import 'package:get/get.dart';
import '../../../../shared/models/strategy/trader_list_response.dart';
import '../../../../tk_widgets/tk_w9/user_profile_card_data.dart';

class StrategyHomePageState {
  StrategyHomePageState() {
    ///Initialize variables
  }

  // 交易员列表数据
  final RxList<TraderItem> contractTraders = <TraderItem>[].obs;
  final RxList<TraderItem> spotTraders = <TraderItem>[].obs;
  
  // 加载状态
  final RxBool isLoadingContractTraders = false.obs;
  final RxBool isLoadingSpotTraders = false.obs;
  
  // 刷新状态（区分刷新和加载更多）
  final RxBool isRefreshingContractTraders = false.obs;
  final RxBool isRefreshingSpotTraders = false.obs;
  
  // 错误信息
  final RxString contractTradersError = ''.obs;
  final RxString spotTradersError = ''.obs;
  
  // 分页信息
  final RxInt contractCurrentPage = 1.obs;
  final RxInt spotCurrentPage = 1.obs;
  final RxInt contractTotalPages = 1.obs;
  final RxInt spotTotalPages = 1.obs;
  final RxBool hasMoreContractTraders = true.obs;
  final RxBool hasMoreSpotTraders = true.obs;
}
