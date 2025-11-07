import 'package:get/get.dart';

import 'state.dart';

class TkGuaranteeProfitLogic extends GetxController {
  final TkGuaranteeProfitState state = TkGuaranteeProfitState();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  /// 加载数据
  Future<void> loadData() async {
    state.isLoading.value = true;
    try {
      // TODO: 替换为实际的API调用
      await Future.delayed(const Duration(milliseconds: 500));
      state.initMockData();
    } catch (e) {
      // 处理错误
      Get.snackbar('错误', '加载数据失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新数据
  Future<void> refreshData() async {
    await loadData();
  }

  /// 切换TOP10列表展开状态
  void toggleTopListExpanded() {
    state.isTopListExpanded.value = !state.isTopListExpanded.value;
  }

  /// 切换时间周期
  void changeTimePeriod(String period) {
    state.selectedTimePeriod.value = period;
    // TODO: 根据选择的周期重新加载数据
    loadData();
  }

  /// 切换跟单开关
  void toggleFollowOrder() {
    state.isFollowOrderEnabled.value = !state.isFollowOrderEnabled.value;
    // TODO: 调用API更新跟单开关状态
  }

  /// 上一页
  void previousPage() {
    if (state.currentPage.value > 1) {
      state.currentPage.value--;
      // TODO: 加载对应页的数据
      loadData();
    }
  }

  /// 下一页
  void nextPage() {
    if (state.currentPage.value < state.totalPages.value) {
      state.currentPage.value++;
      // TODO: 加载对应页的数据
      loadData();
    }
  }
}
