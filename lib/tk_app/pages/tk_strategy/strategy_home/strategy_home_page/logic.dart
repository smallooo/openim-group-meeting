import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

import '../../../../core/helpers/trader_helpers.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/services/trader_status_service.dart';
import '../../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../../shared/models/strategy/trader_list_response.dart';
import '../../../../tk_widgets/tk_w9/user_profile_card_data.dart';
import '../../strategy_member_apply/view.dart';
import '../../strategy_member_profile/view.dart';
import '../../strategy_my/view.dart';
import '../../strategy_union_member_profile/view.dart';
import 'state.dart';
import '../../strategy_detail/view.dart';

class StrategyHomePageLogic extends GetxController {
  final StrategyHomePageState state = StrategyHomePageState();
  late final StrategyRepository _strategyRepository;
  late final RefreshController _contractRefreshController;
  late final RefreshController _spotRefreshController;

  @override
  void onInit() {
    super.onInit();
    _initializeRepository();
    checkAndRefreshTraderStatus();
    // 初始化时加载数据
    loadContractTraders(refresh: true);
    loadSpotTraders(refresh: true);
  }

  void _initializeRepository() {
    try {
      _strategyRepository = Get.find<StrategyRepository>();
    } catch (e) {
      print('Warning: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      _initializeRepositoryWithRiverpod();
    }
    _contractRefreshController = RefreshController();
    _spotRefreshController = RefreshController();
  }

  // 使用Riverpod初始化仓库
  void _initializeRepositoryWithRiverpod() async {
    try {
      final container = ProviderContainer();
      _strategyRepository = await container.read(strategyRepositoryProvider.future);
    } catch (e) {
      print('Error: 使用Riverpod获取StrategyRepository失败: $e');
      // Fallback to direct instantiation if Riverpod fails
      final apiClient = ApiClient();
      _strategyRepository = StrategyRepository(apiClient);
    }
  }

  @override
  void onClose() {
    _contractRefreshController.dispose();
    _spotRefreshController.dispose();
    super.onClose();
  }

  /// 跳转到策略详情页面
  void goToStrategyDetail(dynamic strategyData) {
    // 从UserProfileCardData中提取traderId，这里使用id字段
    String? traderId;
    
    if (strategyData is UserProfileCardData && strategyData.name.isNotEmpty) {
      // 从策略首页的交易员数据中获取对应的traderId
      // 根据名称匹配找到对应的trader
      final allTraders = [...state.contractTraders, ...state.spotTraders];
      final matchedTrader = allTraders.cast<TraderItem?>().firstWhere(
        (trader) => trader?.traderName == strategyData.name,
        orElse: () => null,
      );
      
      if (matchedTrader != null) {
        traderId = matchedTrader.id;
      }
    }
    
    print('StrategyHomePageLogic: 跳转到交易员详情页面，traderId: $traderId');
    
    // 跳转到策略联盟成员资料页面，传递traderId参数
    Get.to(() => StrategyUnionMemberProfilePage(), arguments: {
      'traderId': traderId,
    });
  }
  
  /// 跳转到交易员相关页面（根据交易员状态判断）
  void goToTraderPage() {
    final traderStatusService = TraderStatusService.to;
    
    if (traderStatusService.isTrader) {
      // 是交易员，跳转到交易员详情页面，传入traderId
      print('用户是交易员，跳转到详情页面，traderId: ${traderStatusService.traderId}');
      Get.to(() => StrategyMemberProfilePage(), arguments: {
        'traderId': traderStatusService.traderId,
      });
    } else {
      // 不是交易员，跳转到申请页面
      print('用户不是交易员，跳转到申请页面');
      Get.to(() => StrategyMemberApplyPage());
    }
  }
  
  /// 跳转到我的策略页面（根据交易员状态判断）
  void goToMyStrategiesPage() {
    final traderStatusService = TraderStatusService.to;
    
    if (traderStatusService.isTrader) {
      // 是交易员，跳转到我的策略页面
      print('用户是交易员，跳转到我的策略页面，traderId: ${traderStatusService.traderId}');
      Get.to(() => StrategyMyPage());
    } else {
      // 不是交易员，跳转到申请页面
      print('用户不是交易员，跳转到申请页面（从我的策略入口）');
      Get.to(() => StrategyMemberApplyPage());
    }
  }

  /// 获取StrategyRepository实例
  Future<StrategyRepository> _getStrategyRepository() async {
    try {
      return Get.find<StrategyRepository>();
    } catch (e) {
      print('StrategyHomePageLogic: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      final container = ProviderContainer();
      return await container.read(strategyRepositoryProvider.future);
    }
  }

  /// 加载合约策略交易员列表
  Future<void> loadContractTraders({bool refresh = false}) async {
    try {
      if (refresh) {
        state.contractCurrentPage.value = 1;
        state.contractTraders.clear();
        state.hasMoreContractTraders.value = true;
      }

      if (!state.hasMoreContractTraders.value || state.isLoadingContractTraders.value) {
        return;
      }

      if (!refresh) {
        state.isLoadingContractTraders.value = true;
      }
      state.contractTradersError.value = '';

      final repository = await _getStrategyRepository();
      final response = await repository.getTraderList(
        current: state.contractCurrentPage.value,
        size: 10,
      );

      // 更新分页信息
      state.contractTotalPages.value = int.parse(response.pages);
      state.hasMoreContractTraders.value = state.contractCurrentPage.value < state.contractTotalPages.value;

      // 添加新数据
      if (refresh) {
        final sortedTraders = _sortTraders(List<TraderItem>.from(response.records));
        state.contractTraders.value = sortedTraders;
        print('StrategyHomePageLogic: 合约策略交易员列表刷新完成，数量: ${state.contractTraders.length}');
      } else {
        state.contractTraders.addAll(List<TraderItem>.from(response.records));
        // 重新排序整个列表
        state.contractTraders.value = _sortTraders(state.contractTraders.toList());
        print('StrategyHomePageLogic: 合约策略交易员列表加载完成，数量: ${state.contractTraders.length}');
      }

      // 增加页码
      if (state.hasMoreContractTraders.value) {
        state.contractCurrentPage.value++;
      }
    } catch (e) {
      print('StrategyHomePageLogic: 加载合约策略交易员列表失败: $e');
      state.contractTradersError.value = e.toString();
    } finally {
      if (!refresh) {
        state.isLoadingContractTraders.value = false;
      }
    }
  }

  /// 加载现货策略交易员列表
  Future<void> loadSpotTraders({bool refresh = false}) async {
    try {
      if (refresh) {
        state.spotCurrentPage.value = 1;
        state.spotTraders.clear();
        state.hasMoreSpotTraders.value = true;
      }

      if (!state.hasMoreSpotTraders.value || state.isLoadingSpotTraders.value) {
        return;
      }

      if (!refresh) {
        state.isLoadingSpotTraders.value = true;
      }
      state.spotTradersError.value = '';

      final repository = await _getStrategyRepository();
      final response = await repository.getTraderList(
        current: state.spotCurrentPage.value,
        size: 10,
      );

      // 更新分页信息
      state.spotTotalPages.value = int.parse(response.pages);
      state.hasMoreSpotTraders.value = state.spotCurrentPage.value < state.spotTotalPages.value;

      // 添加新数据
      if (refresh) {
        final sortedTraders = _sortTraders(List<TraderItem>.from(response.records));
        state.spotTraders.value = sortedTraders;
        print('StrategyHomePageLogic: 现货策略交易员列表刷新完成，数量: ${state.spotTraders.length}');
      } else {
        state.spotTraders.addAll(List<TraderItem>.from(response.records));
        // 重新排序整个列表
        state.spotTraders.value = _sortTraders(state.spotTraders.toList());
        print('StrategyHomePageLogic: 现货策略交易员列表加载完成，数量: ${state.spotTraders.length}');
      }

      // 增加页码
      if (state.hasMoreSpotTraders.value) {
        state.spotCurrentPage.value++;
      }
    } catch (e) {
      print('StrategyHomePageLogic: 加载现货策略交易员列表失败: $e');
      state.spotTradersError.value = e.toString();
    } finally {
      if (!refresh) {
        state.isLoadingSpotTraders.value = false;
      }
    }
  }

  /// 将TraderItem转换为UserProfileCardData
  UserProfileCardData convertTraderToProfileCard(TraderItem trader) {
    // 检查是否是自己的策略
    final isOwnStrategy = trader.id == TraderStatusService.to.traderId;
    
    return UserProfileCardData(
      avatarUrl: trader.traderAvatar.isNotEmpty ? trader.traderAvatar : '',
      name: trader.traderName.isNotEmpty ? trader.traderName : '未知交易员',
      subscriptionInfo: SubscriptionInfo(
        label: '订阅',
        current: trader.subscriberCount,
        total: trader.subscriberCount + 100, // 模拟总订阅数
      ),
      guildIconUrl: trader.traderAvatar.isNotEmpty ? trader.traderAvatar : null,
      guildName: '交易员工会',
      followersCount: trader.followerCount,
      ratingInfo: const RatingInfo(
        rating: 4.5,
        maxRating: 5,
      ),
      tags: _generateTraderTags(trader),
      selectedTagIndex: 0,
      contractPoliciesCount: trader.totalStrategyCount,
      viewpointsCount: int.parse(trader.totalViews),
      profitCertificatesCount: 0,
      strategyWinRate: 75.0, // 模拟胜率
      tipperAvatars: trader.traderAvatar.isNotEmpty ? [
        trader.traderAvatar,
        trader.traderAvatar,
        trader.traderAvatar,
      ] : [],
      totalTipsAmount: '0',
      mainAmount: '¥0',
      latestStrategyTime: _formatJoinTime(trader.joinTime),
      subscriptionFee: '¥99/月',
      isOwnStrategy: isOwnStrategy,
    );
  }

  /// 根据交易员信息生成标签
  List<String> _generateTraderTags(TraderItem trader) {
    List<String> tags = [];
    
    if (trader.spotStrategyCount > 0) {
      tags.add('现货');
    }
    if (trader.futuresStrategyCount > 0) {
      tags.add('合约');
    }
    if (trader.totalStrategyCount > 5) {
      tags.add('资深');
    }
    if (trader.followerCount > 100) {
      tags.add('热门');
    }
    
    // 默认标签
    if (tags.isEmpty) {
      tags.add('新手');
    }
    
    return tags;
  }

  /// 对交易员列表进行排序，将自己的策略置顶
  List<TraderItem> _sortTraders(List<TraderItem> traders) {
    final currentTraderId = TraderStatusService.to.traderId;
    if (currentTraderId.isEmpty) {
      return traders;
    }
    
    // 分离自己的策略和其他策略
    final ownStrategies = traders.where((trader) => trader.id == currentTraderId).toList();
    final otherStrategies = traders.where((trader) => trader.id != currentTraderId).toList();
    
    // 将自己的策略放在最前面
    return [...ownStrategies, ...otherStrategies];
  }

  /// 格式化加入时间
  String _formatJoinTime(String joinTime) {
    try {
      final dateTime = DateTime.parse(joinTime);
      final now = DateTime.now();
      final difference = now.difference(dateTime);
      
      if (difference.inDays > 0) {
        return '${difference.inDays}天前';
      } else if (difference.inHours > 0) {
        return '${difference.inHours}小时前';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes}分钟前';
      } else {
        return '刚刚';
      }
    } catch (e) {
      return '未知时间';
    }
  }
}
