import 'package:flutter/animation.dart';

/// 分段控制器数据模型
class SegmentControlData {
  /// 分段选项列表
  final List<String> segments;
  
  /// 当前选中的索引
  final int selectedIndex;
  
  /// 是否启用滑动效果
  final bool enableSwipe;
  
  /// 是否启用点击效果
  final bool enableTap;
  
  /// 是否启用动画
  final bool enableAnimation;
  
  /// 动画持续时间
  final Duration animationDuration;
  
  /// 动画曲线
  final Curve animationCurve;

  const SegmentControlData({
    required this.segments,
    this.selectedIndex = 0,
    this.enableSwipe = true,
    this.enableTap = true,
    this.enableAnimation = true,
    this.animationDuration = const Duration(milliseconds: 300),
    this.animationCurve = Curves.easeInOut,
  });

  /// 创建默认数据（短线、中线、长线）
  factory SegmentControlData.defaultData() {
    return const SegmentControlData(
      segments: ['短线', '中线', '长线'],
      selectedIndex: 0,
      enableSwipe: true,
      enableTap: true,
      enableAnimation: true,
    );
  }

  /// 创建两个选项的数据
  factory SegmentControlData.twoOptions() {
    return const SegmentControlData(
      segments: ['选项1', '选项2'],
      selectedIndex: 0,
      enableSwipe: true,
      enableTap: true,
      enableAnimation: true,
    );
  }

  /// 创建自定义选项数据
  factory SegmentControlData.custom({
    required List<String> segments,
    int selectedIndex = 0,
    bool enableSwipe = true,
    bool enableTap = true,
    bool enableAnimation = true,
    Duration animationDuration = const Duration(milliseconds: 300),
    Curve animationCurve = Curves.easeInOut,
  }) {
    return SegmentControlData(
      segments: segments,
      selectedIndex: selectedIndex,
      enableSwipe: enableSwipe,
      enableTap: enableTap,
      enableAnimation: enableAnimation,
      animationDuration: animationDuration,
      animationCurve: animationCurve,
    );
  }

  /// 复制并修改数据
  SegmentControlData copyWith({
    List<String>? segments,
    int? selectedIndex,
    bool? enableSwipe,
    bool? enableTap,
    bool? enableAnimation,
    Duration? animationDuration,
    Curve? animationCurve,
  }) {
    return SegmentControlData(
      segments: segments ?? this.segments,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      enableSwipe: enableSwipe ?? this.enableSwipe,
      enableTap: enableTap ?? this.enableTap,
      enableAnimation: enableAnimation ?? this.enableAnimation,
      animationDuration: animationDuration ?? this.animationDuration,
      animationCurve: animationCurve ?? this.animationCurve,
    );
  }

  /// 验证数据有效性
  bool get isValid {
    return segments.isNotEmpty && 
           selectedIndex >= 0 && 
           selectedIndex < segments.length;
  }

  /// 获取当前选中的文本
  String get selectedText {
    if (!isValid) return '';
    return segments[selectedIndex];
  }

  /// 从JSON创建数据
  factory SegmentControlData.fromJson(Map<String, dynamic> json) {
    return SegmentControlData(
      segments: List<String>.from(json['segments'] ?? []),
      selectedIndex: json['selectedIndex'] ?? 0,
      enableSwipe: json['enableSwipe'] ?? true,
      enableTap: json['enableTap'] ?? true,
      enableAnimation: json['enableAnimation'] ?? true,
      animationDuration: Duration(milliseconds: json['animationDuration'] ?? 300),
      animationCurve: _parseCurve(json['animationCurve']),
    );
  }

  /// 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'segments': segments,
      'selectedIndex': selectedIndex,
      'enableSwipe': enableSwipe,
      'enableTap': enableTap,
      'enableAnimation': enableAnimation,
      'animationDuration': animationDuration.inMilliseconds,
      'animationCurve': _curveToString(animationCurve),
    };
  }

  /// 解析动画曲线
  static Curve _parseCurve(dynamic curve) {
    if (curve is String) {
      switch (curve) {
        case 'easeInOut':
          return Curves.easeInOut;
        case 'easeIn':
          return Curves.easeIn;
        case 'easeOut':
          return Curves.easeOut;
        case 'linear':
          return Curves.linear;
        case 'bounceIn':
          return Curves.bounceIn;
        case 'bounceOut':
          return Curves.bounceOut;
        case 'elasticIn':
          return Curves.elasticIn;
        case 'elasticOut':
          return Curves.elasticOut;
        default:
          return Curves.easeInOut;
      }
    }
    return Curves.easeInOut;
  }

  /// 动画曲线转字符串
  static String _curveToString(Curve curve) {
    if (curve == Curves.easeInOut) return 'easeInOut';
    if (curve == Curves.easeIn) return 'easeIn';
    if (curve == Curves.easeOut) return 'easeOut';
    if (curve == Curves.linear) return 'linear';
    if (curve == Curves.bounceIn) return 'bounceIn';
    if (curve == Curves.bounceOut) return 'bounceOut';
    if (curve == Curves.elasticIn) return 'elasticIn';
    if (curve == Curves.elasticOut) return 'elasticOut';
    return 'easeInOut';
  }
}
