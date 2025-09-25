/// 用户资料卡片数据模型
class ProfileCardData {
  /// 用户头像图片路径或网络地址
  final String avatarUrl;
  
  /// 用户名称
  final String name;
  
  /// 用户职位/头衔
  final String title;
  
  /// 关注数量
  final int followCount;
  
  /// 详情按钮文本
  final String detailButtonText;
  
  /// 标签列表
  final List<String> tags;
  
  /// 当前选中的标签索引
  final int selectedTagIndex;
  
  /// 策略数量
  final int strategyCount;
  
  /// 观点数量
  final int viewpointCount;
  
  /// 胜率百分比
  final double winRate;

  const ProfileCardData({
    required this.avatarUrl,
    required this.name,
    required this.title,
    required this.followCount,
    this.detailButtonText = '详情',
    required this.tags,
    this.selectedTagIndex = 0,
    required this.strategyCount,
    required this.viewpointCount,
    required this.winRate,
  });

  /// 创建默认数据
  factory ProfileCardData.defaultData() {
    return const ProfileCardData(
      avatarUrl: 'https://via.placeholder.com/60x60',
      name: 'David',
      title: '會長',
      followCount: 5514,
      detailButtonText: '详情',
      tags: ['短线', '中线', '高频'],
      selectedTagIndex: 0,
      strategyCount: 1715,
      viewpointCount: 444,
      winRate: 72.59,
    );
  }

  /// 复制并修改数据
  ProfileCardData copyWith({
    String? avatarUrl,
    String? name,
    String? title,
    int? followCount,
    String? detailButtonText,
    List<String>? tags,
    int? selectedTagIndex,
    int? strategyCount,
    int? viewpointCount,
    double? winRate,
  }) {
    return ProfileCardData(
      avatarUrl: avatarUrl ?? this.avatarUrl,
      name: name ?? this.name,
      title: title ?? this.title,
      followCount: followCount ?? this.followCount,
      detailButtonText: detailButtonText ?? this.detailButtonText,
      tags: tags ?? this.tags,
      selectedTagIndex: selectedTagIndex ?? this.selectedTagIndex,
      strategyCount: strategyCount ?? this.strategyCount,
      viewpointCount: viewpointCount ?? this.viewpointCount,
      winRate: winRate ?? this.winRate,
    );
  }
}

/// 统计数据类型
class StatisticData {
  /// 统计标题
  final String title;
  
  /// 统计数值
  final String value;

  const StatisticData({
    required this.title,
    required this.value,
  });
}
