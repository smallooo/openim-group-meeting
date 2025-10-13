import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../routes/app_pages.dart';

import '../../tk_subscription/order_detail/view.dart';
import '../../tk_subscription/order_list/view.dart';
import '../../tk_subscription/payment_fail_page/usage_example.dart';
import '../../tk_subscription/payment_progress/usage_example.dart';
import '../../tk_subscription/payment_success/usage_example.dart';
import '../../tk_subscription/recharge_balance/view.dart';
import '../../tk_subscription/strategy_subscription/view.dart';
import '../../tk_subscription/verify_password/usage_example.dart';
import 'state.dart';
import '../strategy_member_follow/view.dart';
import '../strategy_member_follow/state.dart';
import '../strategy_detail/view.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../shared/models/strategy/trader_detail_response.dart';
import '../../../shared/models/strategy/trader_strategy_pagination_data.dart';
import '../../../shared/models/strategy/trader_strategy_item.dart';

class StrategyUnionMemberProfileLogic extends GetxController {
  final StrategyUnionMemberProfileState state = StrategyUnionMemberProfileState();
  final RxBool isSubscribed = false.obs;
  
  String? _traderId;

  @override
  void onInit() {
    super.onInit();
    
    // 获取传递的参数
    final arguments = Get.arguments;
    if (arguments != null && arguments is Map) {
      _traderId = arguments['traderId'] as String?;
    }
    
    print('StrategyUnionMemberProfileLogic: 获取到traderId参数: $_traderId');
    
    // 加载用户资料数据
    loadUserProfile();
  }

  // 加载用户资料数据
  Future<void> loadUserProfile() async {
    if (_traderId == null || _traderId!.isEmpty) {
      print('StrategyUnionMemberProfileLogic: traderId为空，使用默认数据');
      update();
      return;
    }
    
    try {
      state.isLoading = true;
      update();
      
      print('StrategyUnionMemberProfileLogic: 开始调用接口获取交易员详情...');
      
      // 获取StrategyRepository实例
      final repository = await _getStrategyRepository();
      
      // 调用接口获取交易员详情
      final traderDetail = await repository.getTraderDetail(_traderId!);
      
      print('StrategyUnionMemberProfileLogic: 获取交易员详情成功: ${traderDetail.traderName}');
      
      // 获取订阅状态
      final subscriptionStatus = await repository.getSubscriptionStatus(_traderId!);
      isSubscribed.value = subscriptionStatus.isSubscribed;
      // 更新状态数据
      _updateStateWithTraderDetail(traderDetail);
      
      state.error = '';
    } catch (e) {
      print('StrategyUnionMemberProfileLogic: 获取交易员详情失败: $e');
      state.error = e.toString();
    } finally {
      state.isLoading = false;
      update();
    }
  }

  /// 获取StrategyRepository实例
  Future<StrategyRepository> _getStrategyRepository() async {
    try {
      return Get.find<StrategyRepository>();
    } catch (e) {
      print('StrategyUnionMemberProfileLogic: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      final container = ProviderContainer();
      return await container.read(strategyRepositoryProvider.future);
    }
  }

  /// 使用接口数据更新状态
  void _updateStateWithTraderDetail(TraderDetailData traderDetail) {
    state.userName = traderDetail.traderName;
    state.userAvatar = traderDetail.traderAvatar;
    state.strategyNotes = traderDetail.bio;
    state.joinDate = _formatJoinTime(traderDetail.joinTime);
    state.subscribersCount = traderDetail.subscriberCount;
    state.followersCount = traderDetail.followerCount;
    state.viewsCount = _formatViewsCount(traderDetail.totalViews);
    
    // 设置一些默认值
    state.unionName = '交易员工会';
    state.isVerified = true;
    state.profileLink = 'toklink.io/trader/${traderDetail.id}';
  }

  /// 格式化加入时间
  String _formatJoinTime(String joinTime) {
    try {
      final dateTime = DateTime.parse(joinTime);
      return '${dateTime.year}/${dateTime.month.toString().padLeft(2, '0')} 加入';
    } catch (e) {
      return '未知时间';
    }
  }

  /// 格式化浏览量
  String _formatViewsCount(String totalViews) {
    try {
      final views = int.parse(totalViews);
      if (views >= 1000000) {
        return '${(views / 1000000).toStringAsFixed(1)}M 浏览';
      } else if (views >= 1000) {
        return '${(views / 1000).toStringAsFixed(1)}K 浏览';
      } else {
        return '$views 浏览';
      }
    } catch (e) {
      return '$totalViews 浏览';
    }
  }

  // 切换关注状态
  void toggleFollow() {
    state.isFollowing = !state.isFollowing;
    if (state.isFollowing) {
      state.followersCount++;
    } else {
      state.followersCount--;
    }
    update();
  }

  // 切换标签页
  void switchTab(int index) {
    state.currentTabIndex = index;
    update();
    
    // 如果切换到策略tab，加载策略数据
    if (index == 1 && state.strategiesList.isEmpty && !state.isLoadingStrategies) {
      loadTraderStrategies();
    }
  }

  // 订阅功能
  void subscribe() {
    Get.toNamed(AppRoutes.strategySubscription, arguments: {'traderId': _traderId});
  }

  // 打赏功能
  void tip() {
    // TODO: 实现打赏逻辑
    state.tipCount++;
    update();
  }

  // 跳转到关注页面 - 正在关注
  void navigateToFollowing() {
    // Get.to(() => StrategyMemberFollowPage(),
    //     arguments: FollowTabType.following);
  }

  // 跳转到关注页面 - 关注者
  void navigateToFollowers() {
    // Get.to(() => StrategyMemberFollowPage(),
    //     arguments: FollowTabType.followers);
  }

  // 加载交易员策略列表
  Future<void> loadTraderStrategies({bool refresh = false}) async {
    if (_traderId == null || _traderId!.isEmpty) {
      print('StrategyUnionMemberProfileLogic: traderId为空，无法加载策略列表');
      return;
    }

    if (refresh) {
      state.strategiesList.clear();
      state.strategiesCurrentPage = 1;
      state.hasMoreStrategies = true;
      state.strategiesError = '';
    }

    if (!state.hasMoreStrategies) {
      print('StrategyUnionMemberProfileLogic: 没有更多策略数据');
      return;
    }

    try {
      state.isLoadingStrategies = true;
      update();

      print('StrategyUnionMemberProfileLogic: 开始加载交易员策略列表...');

      // 获取StrategyRepository实例
      final repository = await _getStrategyRepository();

      // 调用接口获取策略列表
      final paginationData = await repository.getTraderStrategies(
        _traderId!,
        current: state.strategiesCurrentPage,
        size: 10,
      );

      print('StrategyUnionMemberProfileLogic: 获取策略列表成功，数量: ${paginationData.records.length}');

      // 更新状态数据
      if (refresh) {
        state.strategiesList = paginationData.records;
      } else {
        state.strategiesList.addAll(paginationData.records);
      }

      // 更新分页信息
      state.strategiesCurrentPage++;
      state.hasMoreStrategies = state.strategiesList.length < int.parse(paginationData.total);
      state.strategiesError = '';
    } catch (e) {
      print('StrategyUnionMemberProfileLogic: 获取策略列表失败: $e');
      state.strategiesError = e.toString();
    } finally {
      state.isLoadingStrategies = false;
      update();
    }
  }

  // 刷新策略列表
  Future<void> refreshTraderStrategies() async {
    await loadTraderStrategies(refresh: true);
  }

  // 加载更多策略
  Future<void> loadMoreStrategies() async {
    if (!state.isLoadingStrategies && state.hasMoreStrategies) {
      await loadTraderStrategies();
    }
  }

  // 跳转到策略详情
  void goToStrategyDetail(TraderStrategyItem strategy) {
    print('StrategyUnionMemberProfileLogic: 跳转到策略详情，策略ID: ${strategy.id}');
    Get.to(() => StrategyDetailPage(strategyId: strategy.id));
  }
}
