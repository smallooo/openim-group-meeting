import 'package:get/get.dart';

import 'model/order_list_models.dart';

class TkGuaranteeOrderState {
  // Tab选择索引
  final selectedTabIndex = 0.obs;
  
  // 订单数据
  final orderRecords = <OrderRecord>[].obs;
  
  // 加载状态
  final isLoading = false.obs;
  
  // 分页信息
  final currentPage = 1.obs;
  final totalCount = 0.obs;
  final hasMore = true.obs;
  
  // 当前筛选条件
  final currentFilter = OrderStatusFilter.all.obs;
}
