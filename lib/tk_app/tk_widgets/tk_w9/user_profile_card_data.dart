/// 用户信息卡片数据模型
class UserProfileCardData {
  /// 用户头像图片路径或网络地址 (1)
  final String avatarUrl;
  
  /// 用户名称 (2)
  final String name;
  
  /// 订阅信息 (3) - 包含标签和数值
  final SubscriptionInfo subscriptionInfo;
  
  /// 工会图标 (4)
  final String? guildIconUrl;
  
  /// 工会名称 (5)
  final String guildName;
  
  /// 关注者数量 (6)
  final int followersCount;
  
  /// 评分信息 (7) - 包含5个星形图标
  final RatingInfo ratingInfo;
  
  /// 标签列表 (8)
  final List<String> tags;
  
  /// 当前选中的标签索引
  final int selectedTagIndex;
  
  /// 合约政策数量 (9)
  final int contractPoliciesCount;
  
  /// 观点数量 (9)
  final int viewpointsCount;
  
  /// 盈利凭证数量 (9下面)
  final int profitCertificatesCount;
  
  /// 策略胜率 (9下面)
  final double strategyWinRate;
  
  /// 打赏者头像列表 (11)
  final List<String> tipperAvatars;
  
  /// 打赏总金额 (11)
  final String totalTipsAmount;
  
  /// 主要金额显示 (12)
  final String mainAmount;
  
  /// 最新策略时间 (13)
  final String latestStrategyTime;
  
  /// 订阅费用 (14)
  final String subscriptionFee;

  /// 是否是自己的策略
  final bool isOwnStrategy;

  const UserProfileCardData({
    required this.avatarUrl,
    required this.name,
    required this.subscriptionInfo,
    this.guildIconUrl,
    required this.guildName,
    required this.followersCount,
    required this.ratingInfo,
    required this.tags,
    this.selectedTagIndex = 0,
    required this.contractPoliciesCount,
    required this.viewpointsCount,
    required this.profitCertificatesCount,
    required this.strategyWinRate,
    required this.tipperAvatars,
    required this.totalTipsAmount,
    required this.mainAmount,
    required this.latestStrategyTime,
    required this.subscriptionFee,
    this.isOwnStrategy = false,
  });

  /// 创建默认数据
  factory UserProfileCardData.defaultData() {
    return UserProfileCardData(
      avatarUrl: 'https://via.placeholder.com/60x60/4CAF50/FFFFFF?text=🐱',
      name: '會長 David',
      subscriptionInfo: const SubscriptionInfo(
        label: '订阅',
        current: 511,
        total: 520,
      ),
      guildIconUrl: 'https://via.placeholder.com/20x20/4CAF50/FFFFFF?text=🛡️',
      guildName: 'LTT工会',
      followersCount: 6282,
      ratingInfo: const RatingInfo(
        rating: 4.5,
        maxRating: 5,
      ),
      tags: ['长线', '中线'],
      selectedTagIndex: 0,
      contractPoliciesCount: 1715,
      viewpointsCount: 444,
      profitCertificatesCount: 3,
      strategyWinRate: 72.59,
      tipperAvatars: [
        'https://via.placeholder.com/20x20/FF6B6B/FFFFFF?text=🐱',
        'https://via.placeholder.com/20x20/4ECDC4/FFFFFF?text=🐱',
        'https://via.placeholder.com/20x20/45B7D1/FFFFFF?text=🐱',
      ],
      totalTipsAmount: '274U',
      mainAmount: '218U',
      latestStrategyTime: '4分钟前',
      subscriptionFee: '订阅费/月',
      isOwnStrategy: false,
    );
  }

  /// 复制并修改数据
  UserProfileCardData copyWith({
    String? avatarUrl,
    String? name,
    SubscriptionInfo? subscriptionInfo,
    String? guildIconUrl,
    String? guildName,
    int? followersCount,
    RatingInfo? ratingInfo,
    List<String>? tags,
    int? selectedTagIndex,
    int? contractPoliciesCount,
    int? viewpointsCount,
    int? profitCertificatesCount,
    double? strategyWinRate,
    List<String>? tipperAvatars,
    String? totalTipsAmount,
    String? mainAmount,
    String? latestStrategyTime,
    String? subscriptionFee,
    bool? isOwnStrategy,
  }) {
    return UserProfileCardData(
      avatarUrl: avatarUrl ?? this.avatarUrl,
      name: name ?? this.name,
      subscriptionInfo: subscriptionInfo ?? this.subscriptionInfo,
      guildIconUrl: guildIconUrl ?? this.guildIconUrl,
      guildName: guildName ?? this.guildName,
      followersCount: followersCount ?? this.followersCount,
      ratingInfo: ratingInfo ?? this.ratingInfo,
      tags: tags ?? this.tags,
      selectedTagIndex: selectedTagIndex ?? this.selectedTagIndex,
      contractPoliciesCount: contractPoliciesCount ?? this.contractPoliciesCount,
      viewpointsCount: viewpointsCount ?? this.viewpointsCount,
      profitCertificatesCount: profitCertificatesCount ?? this.profitCertificatesCount,
      strategyWinRate: strategyWinRate ?? this.strategyWinRate,
      tipperAvatars: tipperAvatars ?? this.tipperAvatars,
      totalTipsAmount: totalTipsAmount ?? this.totalTipsAmount,
      mainAmount: mainAmount ?? this.mainAmount,
      latestStrategyTime: latestStrategyTime ?? this.latestStrategyTime,
      subscriptionFee: subscriptionFee ?? this.subscriptionFee,
      isOwnStrategy: isOwnStrategy ?? this.isOwnStrategy,
    );
  }
}

/// 订阅信息
class SubscriptionInfo {
  /// 订阅标签
  final String label;
  
  /// 当前订阅数
  final int current;
  
  /// 总订阅数
  final int total;

  const SubscriptionInfo({
    required this.label,
    required this.current,
    required this.total,
  });

  /// 获取完整订阅文本
  String get fullText => '$label $current/$total';
}

/// 评分信息
class RatingInfo {
  /// 当前评分
  final double rating;
  
  /// 最大评分
  final int maxRating;

  const RatingInfo({
    required this.rating,
    required this.maxRating,
  });
}
