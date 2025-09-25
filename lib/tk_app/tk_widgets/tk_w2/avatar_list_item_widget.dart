import 'package:flutter/material.dart';

/// 头像列表项组件
/// 包含左侧文字、中间内容（图片或文字）和右侧箭头
class AvatarListItemWidget extends StatelessWidget {
  /// 左侧文字内容
  final String leftText;
  
  /// 左侧文字样式
  final TextStyle? leftTextStyle;
  
  /// 中间头像图片路径
  final String? avatarPath;
  
  /// 中间头像 Widget
  final Widget? avatarWidget;
  
  /// 中间文字内容（当不使用头像时）
  final String? middleText;
  
  /// 中间文字样式
  final TextStyle? middleTextStyle;
  
  /// 头像大小
  final double? avatarSize;
  
  /// 头像形状
  final BoxShape avatarShape;
  
  /// 头像圆角半径（仅当 avatarShape 为 BoxShape.rectangle 时有效）
  final double? avatarBorderRadius;
  
  /// 头像边框宽度
  final double? avatarBorderWidth;
  
  /// 头像边框颜色
  final Color? avatarBorderColor;
  
  /// 是否显示右侧箭头
  final bool showArrow;
  
  /// 右侧箭头图标
  final Widget? arrowIcon;
  
  /// 右侧箭头大小
  final double? arrowSize;
  
  /// 右侧箭头颜色
  final Color? arrowColor;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
  /// 是否显示分割线
  final bool showDivider;
  
  /// 分割线颜色
  final Color? dividerColor;
  
  /// 分割线高度
  final double? dividerHeight;
  
  /// 分割线左边距
  final double? dividerLeftMargin;
  
  /// 分割线右边距
  final double? dividerRightMargin;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;

  const AvatarListItemWidget({
    super.key,
    required this.leftText,
    this.leftTextStyle,
    this.avatarPath,
    this.avatarWidget,
    this.middleText,
    this.middleTextStyle,
    this.avatarSize = 40.0,
    this.avatarShape = BoxShape.circle,
    this.avatarBorderRadius,
    this.avatarBorderWidth,
    this.avatarBorderColor,
    this.showArrow = true,
    this.arrowIcon,
    this.arrowSize = 16.0,
    this.arrowColor,
    this.onTap,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.margin,
    this.height,
    this.showDivider = false,
    this.dividerColor,
    this.dividerHeight = 0.5,
    this.dividerLeftMargin = 16.0,
    this.dividerRightMargin = 0.0,
    this.showRippleEffect = true,
  }) : assert(
    (avatarPath != null || avatarWidget != null || middleText != null),
    '必须提供 avatarPath、avatarWidget 或 middleText 中的一个',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          Container(
            height: height,
            padding: padding,
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
            ),
            child: Material(
              color: Colors.transparent,
              child: showRippleEffect 
                ? InkWell(
                    onTap: onTap,
                    child: _buildContent(),
                  )
                : GestureDetector(
                    onTap: onTap,
                    child: _buildContent(),
                  ),
            ),
          ),
          
          // 分割线
          if (showDivider)
            Container(
              height: dividerHeight,
              margin: EdgeInsets.only(
                left: dividerLeftMargin ?? 0.0,
                right: dividerRightMargin ?? 0.0,
              ),
              color: dividerColor ?? const Color(0xFFE5E5E5),
            ),
        ],
      ),
    );
  }

  /// 构建内容区域
  Widget _buildContent() {
    return Row(
      children: [
        // 左侧文字
        Text(
          leftText,
          style: leftTextStyle ?? 
            const TextStyle(
              fontSize: 16.0,
              color: Color(0xFF333333),
              fontWeight: FontWeight.normal,
            ),
        ),
        
        // 中间间距
        const Spacer(),
        
        // 中间内容（头像或文字）
        _buildMiddleContent(),
        
        // 右侧箭头
        if (showArrow) ...[
          const SizedBox(width: 8.0),
          _buildArrow(),
        ],
      ],
    );
  }

  /// 构建中间内容
  Widget _buildMiddleContent() {
    // 优先使用头像 Widget
    if (avatarWidget != null) {
      return _buildAvatarContainer(avatarWidget!);
    }
    
    // 使用头像图片路径
    if (avatarPath != null) {
      return _buildAvatarContainer(
        Image.asset(
          avatarPath!,
          width: avatarSize,
          height: avatarSize,
          fit: BoxFit.cover,
        ),
      );
    }
    
    // 使用中间文字
    if (middleText != null) {
      return Text(
        middleText!,
        style: middleTextStyle ?? 
          const TextStyle(
            fontSize: 14.0,
            color: Color(0xFF666666),
            fontWeight: FontWeight.normal,
          ),
      );
    }
    
    return const SizedBox.shrink();
  }

  /// 构建头像容器
  Widget _buildAvatarContainer(Widget child) {
    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        shape: avatarShape,
        borderRadius: avatarShape == BoxShape.rectangle && avatarBorderRadius != null
          ? BorderRadius.circular(avatarBorderRadius!)
          : null,
        border: avatarBorderWidth != null && avatarBorderWidth! > 0
          ? Border.all(
              color: avatarBorderColor ?? Colors.grey,
              width: avatarBorderWidth!,
            )
          : null,
      ),
      child: avatarShape == BoxShape.circle
        ? ClipOval(child: child)
        : ClipRRect(
            borderRadius: avatarShape == BoxShape.rectangle && avatarBorderRadius != null
              ? BorderRadius.circular(avatarBorderRadius!)
              : BorderRadius.zero,
            child: child,
          ),
    );
  }

  /// 构建箭头
  Widget _buildArrow() {
    if (arrowIcon != null) {
      return SizedBox(
        width: arrowSize,
        height: arrowSize,
        child: arrowIcon,
      );
    }
    
    return Icon(
      Icons.chevron_right,
      size: arrowSize,
      color: arrowColor ?? const Color(0xFF999999),
    );
  }
}

/// 预设样式的头像列表项组件
class PresetAvatarListItemWidget extends StatelessWidget {
  /// 左侧文字内容
  final String leftText;
  
  /// 中间内容类型
  final AvatarContentType contentType;
  
  /// 中间内容值（图片路径或文字）
  final String? contentValue;
  
  /// 中间内容 Widget
  final Widget? contentWidget;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 是否显示右侧箭头
  final bool showArrow;
  
  /// 是否显示分割线
  final bool showDivider;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 自定义样式
  final AvatarListItemStyle? style;

  const PresetAvatarListItemWidget({
    super.key,
    required this.leftText,
    required this.contentType,
    this.contentValue,
    this.contentWidget,
    this.onTap,
    this.showArrow = true,
    this.showDivider = false,
    this.showRippleEffect = true,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarListItemWidget(
      leftText: leftText,
      leftTextStyle: style?.leftTextStyle,
      avatarPath: contentType == AvatarContentType.image ? contentValue : null,
      avatarWidget: contentType == AvatarContentType.widget ? contentWidget : null,
      middleText: contentType == AvatarContentType.text ? contentValue : null,
      middleTextStyle: style?.middleTextStyle,
      avatarSize: style?.avatarSize ?? 40.0,
      avatarShape: style?.avatarShape ?? BoxShape.circle,
      avatarBorderRadius: style?.avatarBorderRadius,
      avatarBorderWidth: style?.avatarBorderWidth,
      avatarBorderColor: style?.avatarBorderColor,
      showArrow: showArrow,
      arrowIcon: style?.arrowIcon,
      arrowSize: style?.arrowSize ?? 16.0,
      arrowColor: style?.arrowColor,
      onTap: onTap,
      backgroundColor: style?.backgroundColor,
      padding: style?.padding ?? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: style?.margin,
      height: style?.height,
      showDivider: showDivider,
      dividerColor: style?.dividerColor,
      dividerHeight: style?.dividerHeight ?? 0.5,
      dividerLeftMargin: style?.dividerLeftMargin ?? 16.0,
      dividerRightMargin: style?.dividerRightMargin ?? 0.0,
      showRippleEffect: showRippleEffect,
    );
  }
}

/// 中间内容类型枚举
enum AvatarContentType {
  image,    // 图片
  text,     // 文字
  widget,   // 自定义 Widget
}

/// 头像列表项样式配置
class AvatarListItemStyle {
  /// 左侧文字样式
  final TextStyle? leftTextStyle;
  
  /// 中间文字样式
  final TextStyle? middleTextStyle;
  
  /// 头像大小
  final double? avatarSize;
  
  /// 头像形状
  final BoxShape? avatarShape;
  
  /// 头像圆角半径（仅当 avatarShape 为 BoxShape.rectangle 时有效）
  final double? avatarBorderRadius;
  
  /// 头像边框宽度
  final double? avatarBorderWidth;
  
  /// 头像边框颜色
  final Color? avatarBorderColor;
  
  /// 右侧箭头图标
  final Widget? arrowIcon;
  
  /// 右侧箭头大小
  final double? arrowSize;
  
  /// 右侧箭头颜色
  final Color? arrowColor;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
  /// 分割线颜色
  final Color? dividerColor;
  
  /// 分割线高度
  final double? dividerHeight;
  
  /// 分割线左边距
  final double? dividerLeftMargin;
  
  /// 分割线右边距
  final double? dividerRightMargin;

  const AvatarListItemStyle({
    this.leftTextStyle,
    this.middleTextStyle,
    this.avatarSize,
    this.avatarShape,
    this.avatarBorderRadius,
    this.avatarBorderWidth,
    this.avatarBorderColor,
    this.arrowIcon,
    this.arrowSize,
    this.arrowColor,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.height,
    this.dividerColor,
    this.dividerHeight,
    this.dividerLeftMargin,
    this.dividerRightMargin,
  });
}
