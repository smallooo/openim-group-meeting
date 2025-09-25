import 'package:flutter/material.dart';
import 'segment_control_data.dart';

/// 分段控制器组件
/// 
/// 一个高度可定制的分段控制器，支持点击和滑动效果
/// 完全按照截图设计，支持2个或3个选项
class SegmentControlWidget extends StatefulWidget {
  /// 控制器数据
  final SegmentControlData data;
  
  /// 控制器宽度
  final double? width;
  
  /// 控制器高度
  final double height;
  
  /// 控制器内边距
  final EdgeInsets padding;
  
  /// 控制器外边距
  final EdgeInsets margin;
  
  /// 控制器圆角半径
  final double borderRadius;
  
  /// 选中段背景色
  final Color? selectedBackgroundColor;
  
  /// 未选中段背景色
  final Color? unselectedBackgroundColor;
  
  /// 选中段文字颜色
  final Color? selectedTextColor;
  
  /// 未选中段文字颜色
  final Color? unselectedTextColor;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double borderWidth;
  
  /// 选中段文字样式
  final TextStyle? selectedTextStyle;
  
  /// 未选中段文字样式
  final TextStyle? unselectedTextStyle;
  
  /// 段间距
  final double segmentSpacing;
  
  /// 段内边距
  final EdgeInsets segmentPadding;
  
  /// 选中段圆角半径
  final double selectedBorderRadius;
  
  /// 未选中段圆角半径
  final double unselectedBorderRadius;
  
  /// 选择变化回调
  final ValueChanged<int>? onSelectionChanged;
  
  /// 段点击回调
  final ValueChanged<int>? onSegmentTap;

  const SegmentControlWidget({
    super.key,
    required this.data,
    this.width,
    this.height = 40.0,
    this.padding = const EdgeInsets.all(2.0),
    this.margin = EdgeInsets.zero,
    this.borderRadius = 20.0,
    this.selectedBackgroundColor,
    this.unselectedBackgroundColor,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.borderColor,
    this.borderWidth = 1.0,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    this.segmentSpacing = 0.0,
    this.segmentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.selectedBorderRadius = 18.0,
    this.unselectedBorderRadius = 18.0,
    this.onSelectionChanged,
    this.onSegmentTap,
  });

  @override
  State<SegmentControlWidget> createState() => _SegmentControlWidgetState();
}

class _SegmentControlWidgetState extends State<SegmentControlWidget>
    with TickerProviderStateMixin {
  late int _selectedIndex;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.data.selectedIndex;
    _animationController = AnimationController(
      duration: widget.data.animationDuration,
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: widget.data.animationCurve,
    );
  }

  @override
  void didUpdateWidget(SegmentControlWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data.selectedIndex != widget.data.selectedIndex) {
      // 使用 WidgetsBinding.instance.addPostFrameCallback 来延迟更新
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _updateSelection(widget.data.selectedIndex, animate: true);
        }
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.data.isValid) {
      return const SizedBox.shrink();
    }

    return Container(
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      decoration: BoxDecoration(
        color: widget.unselectedBackgroundColor ?? Colors.purple,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: widget.borderColor != null
            ? Border.all(color: widget.borderColor!, width: widget.borderWidth)
            : null,
      ),
      child: _buildTapControl(),
    );
  }


  /// 构建点击控制器
  Widget _buildTapControl() {
    return Stack(
      children: [
        // 背景指示器
        _buildBackgroundIndicator(),
        // 分段按钮
        Row(
          children: widget.data.segments.asMap().entries.map((entry) {
            final index = entry.key;
            final segment = entry.value;
            return Expanded(
              child: GestureDetector(
                onTap: widget.data.enableTap
                    ? () => _updateSelection(index, animate: true)
                    : null,
                child: _buildSegment(index),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  /// 构建背景指示器
  Widget _buildBackgroundIndicator() {
    final totalWidth = widget.width ?? 200.0;
    final segmentWidth = totalWidth / widget.data.segments.length;
    
    return AnimatedPositioned(
      duration: widget.data.enableAnimation 
          ? widget.data.animationDuration 
          : Duration.zero,
      curve: widget.data.animationCurve,
      left: _selectedIndex * segmentWidth,
      top: 0,
      child: Container(
        width: segmentWidth,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.selectedBackgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(widget.selectedBorderRadius),
          border: widget.borderColor != null
              ? Border.all(color: widget.borderColor!, width: widget.borderWidth)
              : null,
        ),
      ),
    );
  }

  /// 构建单个段
  Widget _buildSegment(int index) {
    final isSelected = index == _selectedIndex;
    final segment = widget.data.segments[index];
    
    return Container(
      margin: EdgeInsets.only(
        right: index < widget.data.segments.length - 1 ? widget.segmentSpacing : 0,
      ),
      child: Container(
        padding: widget.segmentPadding,
        child: Center(
          child: Text(
            segment,
            style: isSelected
                ? (widget.selectedTextStyle ?? 
                    TextStyle(
                      color: widget.selectedTextColor ?? Colors.purple,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ))
                : (widget.unselectedTextStyle ?? 
                    TextStyle(
                      color: widget.unselectedTextColor ?? Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  /// 更新选择
  void _updateSelection(int index, {required bool animate}) {
    if (index == _selectedIndex || index < 0 || index >= widget.data.segments.length) {
      return;
    }

    setState(() {
      _selectedIndex = index;
    });

    if (animate && widget.data.enableAnimation) {
      _animationController.forward(from: 0.0);
    }

    // 通知外部选择变化
    widget.onSelectionChanged?.call(index);
    widget.onSegmentTap?.call(index);
  }
}

/// 分段控制器构建器
/// 
/// 提供更简洁的API来创建分段控制器
class SegmentControlBuilder {
  /// 创建默认的三段控制器（短线、中线、长线）
  static Widget createDefault({
    int selectedIndex = 0,
    ValueChanged<int>? onSelectionChanged,
    double? width,
    double height = 40.0,
    Color? selectedBackgroundColor,
    Color? unselectedBackgroundColor,
    Color? selectedTextColor,
    Color? unselectedTextColor,
    Color? borderColor,
  }) {
    return SegmentControlWidget(
      data: SegmentControlData.defaultData().copyWith(
        selectedIndex: selectedIndex,
      ),
      width: width,
      height: height,
      selectedBackgroundColor: selectedBackgroundColor,
      unselectedBackgroundColor: unselectedBackgroundColor,
      selectedTextColor: selectedTextColor,
      unselectedTextColor: unselectedTextColor,
      borderColor: borderColor,
      onSelectionChanged: onSelectionChanged,
    );
  }

  /// 创建两个选项的控制器
  static Widget createTwoOptions({
    required List<String> segments,
    int selectedIndex = 0,
    ValueChanged<int>? onSelectionChanged,
    double? width,
    double height = 40.0,
    Color? selectedBackgroundColor,
    Color? unselectedBackgroundColor,
    Color? selectedTextColor,
    Color? unselectedTextColor,
    Color? borderColor,
  }) {
    return SegmentControlWidget(
      data: SegmentControlData.twoOptions().copyWith(
        segments: segments,
        selectedIndex: selectedIndex,
      ),
      width: width,
      height: height,
      selectedBackgroundColor: selectedBackgroundColor,
      unselectedBackgroundColor: unselectedBackgroundColor,
      selectedTextColor: selectedTextColor,
      unselectedTextColor: unselectedTextColor,
      borderColor: borderColor,
      onSelectionChanged: onSelectionChanged,
    );
  }

  /// 创建自定义控制器
  static Widget createCustom({
    required List<String> segments,
    int selectedIndex = 0,
    bool enableSwipe = true,
    bool enableTap = true,
    bool enableAnimation = true,
    ValueChanged<int>? onSelectionChanged,
    double? width,
    double height = 40.0,
    Color? selectedBackgroundColor,
    Color? unselectedBackgroundColor,
    Color? selectedTextColor,
    Color? unselectedTextColor,
    Color? borderColor,
    TextStyle? selectedTextStyle,
    TextStyle? unselectedTextStyle,
  }) {
    return SegmentControlWidget(
      data: SegmentControlData.custom(
        segments: segments,
        selectedIndex: selectedIndex,
        enableSwipe: enableSwipe,
        enableTap: enableTap,
        enableAnimation: enableAnimation,
      ),
      width: width,
      height: height,
      selectedBackgroundColor: selectedBackgroundColor,
      unselectedBackgroundColor: unselectedBackgroundColor,
      selectedTextColor: selectedTextColor,
      unselectedTextColor: unselectedTextColor,
      borderColor: borderColor,
      selectedTextStyle: selectedTextStyle,
      unselectedTextStyle: unselectedTextStyle,
      onSelectionChanged: onSelectionChanged,
    );
  }
}
