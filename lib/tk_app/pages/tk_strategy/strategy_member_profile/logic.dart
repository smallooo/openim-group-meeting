import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/network/api_client.dart';
import '../../../core/services/trader_status_service.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../strategy_member_fee_set/logic.dart';
import '../strategy_member_fee_set/view.dart';
import '../strategy_publish/view.dart';
import 'state.dart';

class StrategyMemberProfileLogic extends GetxController {
  final StrategyMemberProfileState state = StrategyMemberProfileState();
  late final StrategyRepository _strategyRepository;
  
  // 交易员ID（优先级：参数 > 全局缓存 > 默认值）
  String traderId = '';
  
  @override
  void onInit() {
    super.onInit();
    // 获取交易员ID的优先级顺序
    _determineTraderIdPriority();
    _initializeRepository();
  }
  
  // 确定交易员ID的优先级
  void _determineTraderIdPriority() {
    // 1. 优先从Get.arguments获取traderId（跳转时传递的参数）
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null && arguments.containsKey('traderId')) {
      traderId = arguments['traderId'] as String;
      print('StrategyMemberProfileLogic: 从参数获取traderId: $traderId');
      return;
    }
    
    // 2. 其次从全局缓存获取traderId
    final traderStatusService = TraderStatusService.to;
    if (traderStatusService.traderId.isNotEmpty) {
      traderId = traderStatusService.traderId;
      print('StrategyMemberProfileLogic: 从全局缓存获取traderId: $traderId');
      return;
    }
    
    // 3. 最后使用默认值（应该不会到这里，因为页面访问需要交易员权限）
    traderId = '1970351446898610178';
    print('StrategyMemberProfileLogic: 使用默认traderId: $traderId（警告：可能出现了问题）');
  }
  
  // 初始化仓库（参考发布策略页面的实现）
  void _initializeRepository() {
    // 使用GetX的依赖注入获取ApiClient
    // 如果GetX中没有注册，则使用Riverpod的方式
    try {
      _strategyRepository = Get.find<StrategyRepository>();
      // 如果成功获取到，立即加载数据
      _loadTraderDetail();
    } catch (e) {
      // 如果GetX中没有找到，使用Riverpod的方式获取StrategyRepository
      print('Warning: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      _initializeRepositoryWithRiverpod();
    }
  }
  
  // 使用Riverpod初始化仓库（参考发布策略页面的实现）
  void _initializeRepositoryWithRiverpod() async {
    try {
      // 使用Riverpod获取StrategyRepository（这个已经配置了认证拦截器）
      final container = ProviderContainer();
      _strategyRepository = await container.read(strategyRepositoryProvider.future);
      // 初始化成功后加载数据
      _loadTraderDetail();
    } catch (e) {
      print('Error: 使用Riverpod获取StrategyRepository失败: $e');
      // 如果创建失败，使用不带认证的ApiClient作为后备
      final apiClient = ApiClient();
      _strategyRepository = StrategyRepository(apiClient);
      // 使用后备方案加载数据
      _loadTraderDetail();
    }
  }
  
  // 加载交易员详情
  Future<void> _loadTraderDetail() async {
    try {
      state.isLoading.value = true;
      
      // 调用API获取交易员详情
      final traderDetail = await _strategyRepository.getTraderDetail(traderId);
      
      // 更新UI数据
      state.userAvatar.value = traderDetail.traderAvatar;
      state.userName.value = traderDetail.traderName;
      state.subscribersCount.value = traderDetail.subscriberCount;
      
      print('交易员详情加载成功: ${traderDetail.traderName}');
      
    } catch (e) {
      print('加载交易员详情失败: $e');
      // 保持默认值，不显示错误提示
    } finally {
      state.isLoading.value = false;
    }
  }
  
  // 发布交易策略
  void publishTradingStrategy() {
    // Get.snackbar('提示', '发布交易策略');
    Get.to(() => StrategyPublishPage());

  }
  
  // 费用设置
  void openFeeSettings() {
    // Get.snackbar('提示', '费用设置');
    Get.put(StrategyMemberFeeSetLogic());
    Get.to(() =>  StrategyMemberFeeSetPage());
  }
  
  // 押金管理
  void openDepositManagement() {
    Get.snackbar('提示', '押金管理');
  }
  
  // 主播中心
  void openAnchorCenter() {
    Get.snackbar('提示', '主播中心');
  }
  
  // 评价管理
  void openReviewManagement() {
    Get.snackbar('提示', '评价管理');
  }
  
  // 更多设置
  void openMoreSettings() {
    Get.snackbar('提示', '更多设置');
  }
  
  // 交易风格
  void openTradingStyle() {
    Get.snackbar('提示', '交易风格');
  }
  
  // 分账比例帮助
  void showSplitRatioHelp(String type) {
    Get.snackbar('帮助', '$type分账比例说明');
  }
}
