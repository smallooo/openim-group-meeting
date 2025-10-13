import 'package:get/get.dart';

class StrategyDetailState {
  // 用户信息
  RxString userAvatar = 'https://img11.360buyimg.com/img/jfs/t1/275721/2/1900/17609/67d15ec5Fbfdce671/4f23c5ca45c211c7.png'.obs;
  RxString userName = 'CG24822260'.obs;
  RxString userBadge = 'LTT工会'.obs;
  RxBool isVerified = true.obs;
  
  // 策略信息
  RxString strategyId = '61466'.obs;
  RxString strategyType = '短线'.obs;
  RxString symbol = ''.obs;
  RxBool isContract = true.obs;
  RxBool isLong = true.obs;
  RxInt followCount = 0.obs;
  RxString priceRange = ''.obs;
  RxString stopProfitRange = ''.obs;
  RxString stopLossRange = ''.obs;
  RxInt viewCount = 1.obs;
  RxString lastUpdateTime = '刚刚'.obs;
  
  // Tab切换 (0: 策略跟踪, 1: 打赏)
  RxInt selectedTabIndex = 0.obs;
  
  // 策略跟踪列表
  RxList<TrackingComment> trackingList = <TrackingComment>[].obs;
  
  // 打赏列表  
  RxList<RewardComment> rewardList = <RewardComment>[].obs;
  
  // 评价输入相关
  RxBool isShowingCommentInput = false.obs;
  RxString commentText = ''.obs;

  StrategyDetailState() {
    // 初始化示例数据
    _initializeData();
  }
  
  void _initializeData() {
    // 初始化策略跟踪评论
    trackingList.value = [
    //   TrackingComment(
    //     userAvatar: 'https://via.placeholder.com/40',
    //     userName: '最后一搏',
    //     userLevel: 'LV.0',
    //     time: '03/21 17:41',
    //     content: '谢谢会长',
    //   ),
    //   TrackingComment(
    //     userAvatar: 'https://via.placeholder.com/40',
    //     userName: '最后一搏',
    //     userLevel: 'LV.0',
    //     time: '03/21 17:41',
    //     content: '谢谢会长',
    //   ),
    //   TrackingComment(
    //     userAvatar: 'https://via.placeholder.com/40',
    //     userName: '最后一搏',
    //     userLevel: 'LV.0',
    //     time: '03/21 17:41',
    //     content: '谢谢会长',
    //   ),
    ];
    
    // 初始化打赏评论
    rewardList.value = [
      // RewardComment(
      //   userAvatar: 'https://via.placeholder.com/40',
      //   userName: '最后一搏',
      //   userLevel: 'LV.0',
      //   time: '03/21 17:41',
      //   content: '谢谢会长',
      //   rewardAmount: 10.0,
      // ),
    ];
  }
}

class TrackingComment {
  final String userAvatar;
  final String userName;
  final String userLevel;
  final String time;
  final String content;

  TrackingComment({
    required this.userAvatar,
    required this.userName,
    required this.userLevel,
    required this.time,
    required this.content,
  });
}

class RewardComment {
  final String userAvatar;
  final String userName;
  final String userLevel;
  final String time;
  final String content;
  final double rewardAmount;

  RewardComment({
    required this.userAvatar,
    required this.userName,
    required this.userLevel,
    required this.time,
    required this.content,
    required this.rewardAmount,
  });
}
