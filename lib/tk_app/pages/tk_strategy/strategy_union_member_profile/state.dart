class StrategyUnionMemberProfileState {
  // 用户基本信息
  String userName = '會長 David';
  String userAvatar = ''; // 头像URL
  bool isVerified = true; // 是否认证
  String unionName = 'LTT工会';
  bool isFollowing = true; // 是否已关注
  
  // 用户统计信息
  String joinDate = '2023/04 加入';
  int followingCount = 16; // 正在关注
  int followersCount = 6353; // 关注者
  int subscribersCount = 575; // 订阅者
  String viewsCount = '1.0M 浏览'; // 浏览数
  String profileLink = 'h5.coinget.info/h5/u?i=65';
  
  // 打赏信息
  int tipCount = 18; // 打赏人数
  
  // 策略注意事项
  String strategyNotes = '''1. 仓位比例：保持仓位比例一致，不要下单100U或500U以下，资金增长后按比例增加下单金额
2. 杠杆建议：比特币和以太坊合约建议50倍以内，山寨币合约5倍，非常热门的山寨币2倍
3. 现货策略布局：现货保持每个币种仓位比例一致，每个仓位开仓分为"初始仓位"和"补充仓位"
4. 资金和心态：建议3000U以上资金操作适合盈利，保持耐心、信任、稳定心态，学会交易''';
  
  // 标签页
  int currentTabIndex = 0; // 当前选中的标签页
  List<String> tabTitles = ['观点', '策略', '视频', '实盘', '评价'];
  
  // 最新动态
  String latestPostTime = '07/22 15:33';
  String latestPostStatus = '观望';
  String latestPostContent = '仓位比例：保持仓位比例一致，不要下单100U或500U以下，资金增长后按比例增加下单金额。杠杆建议：比特币和以太坊合约建议50倍以内，山寨币合约5倍，非常热门的山寨币2倍。现货策略布局：现货保持每个币种仓位比例一致，每个仓位开仓分为"初始仓位"和"补充仓位"。';

  StrategyUnionMemberProfileState() {
    ///Initialize variables
  }
}
