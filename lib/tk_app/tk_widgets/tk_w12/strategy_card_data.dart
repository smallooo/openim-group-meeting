/// 策略卡片数据模型
class StrategyCardData {
  /// 策略标题
  final String title;
  
  /// 策略图标（可以是图标名称、网络图片URL或本地图片路径）
  final String icon;
  
  /// 策略数量
  final int count;
  
  /// 是否显示边框
  final bool showBorder;
  
  /// 卡片背景色
  final String? backgroundColor;
  
  /// 标题文本颜色
  final String? titleTextColor;
  
  /// 图标颜色
  final String? iconColor;
  
  /// 数量文本颜色
  final String? countTextColor;

  const StrategyCardData({
    required this.title,
    required this.icon,
    required this.count,
    this.showBorder = true,
    this.backgroundColor,
    this.titleTextColor,
    this.iconColor,
    this.countTextColor,
  });

  /// 创建默认数据
  factory StrategyCardData.defaultData() {
    return const StrategyCardData(
      title: '我的策略',
      icon: 'lightbulb', // 使用Material Icons名称
      count: 19,
      showBorder: true,
      backgroundColor: '#FFFFFF',
      titleTextColor: '#000000',
      iconColor: '#4CAF50',
      countTextColor: '#9C27B0',
    );
  }

  /// 复制并修改数据
  StrategyCardData copyWith({
    String? title,
    String? icon,
    int? count,
    bool? showBorder,
    String? backgroundColor,
    String? titleTextColor,
    String? iconColor,
    String? countTextColor,
  }) {
    return StrategyCardData(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      count: count ?? this.count,
      showBorder: showBorder ?? this.showBorder,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleTextColor: titleTextColor ?? this.titleTextColor,
      iconColor: iconColor ?? this.iconColor,
      countTextColor: countTextColor ?? this.countTextColor,
    );
  }

  /// 从JSON创建数据
  factory StrategyCardData.fromJson(Map<String, dynamic> json) {
    return StrategyCardData(
      title: json['title'] ?? '',
      icon: json['icon'] ?? '',
      count: json['count'] ?? 0,
      showBorder: json['showBorder'] ?? true,
      backgroundColor: json['backgroundColor'],
      titleTextColor: json['titleTextColor'],
      iconColor: json['iconColor'],
      countTextColor: json['countTextColor'],
    );
  }

  /// 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'icon': icon,
      'count': count,
      'showBorder': showBorder,
      'backgroundColor': backgroundColor,
      'titleTextColor': titleTextColor,
      'iconColor': iconColor,
      'countTextColor': countTextColor,
    };
  }
}
