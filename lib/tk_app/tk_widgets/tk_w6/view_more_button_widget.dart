import 'package:flutter/material.dart';

/// 查看更多按钮组件
/// 左边是文字，右边是图标，整体居中显示
/// 支持完全自定义，组件化开发，提高复用，解耦，好维护，易用
class ViewMoreButtonWidget extends StatelessWidget {
  /// 按钮文字内容
  final String text;
  
  /// 文字样式
  final TextStyle? textStyle;
  
  /// 右侧图标
  final Widget? rightIcon;
  
  /// 右侧图标大小
  final double? rightIconSize;
  
  /// 右侧图标颜色
  final Color? rightIconColor;
  
  /// 文字和图标之间的间距
  final double? textIconSpacing;
  
  /// 按钮背景颜色
  final Color? backgroundColor;
  
  /// 按钮内边距
  final EdgeInsetsGeometry? padding;
  
  /// 按钮外边距
  final EdgeInsetsGeometry? margin;
  
  /// 按钮高度
  final double? height;
  
  /// 按钮宽度
  final double? width;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 边框
  final Border? border;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double? borderWidth;
  
  /// 阴影
  final List<BoxShadow>? boxShadow;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 是否启用按钮
  final bool enabled;
  
  /// 禁用状态下的背景颜色
  final Color? disabledBackgroundColor;
  
  /// 禁用状态下的文字颜色
  final Color? disabledTextColor;
  
  /// 禁用状态下的图标颜色
  final Color? disabledIconColor;
  
  /// 按钮最小宽度
  final double? minWidth;
  
  /// 按钮最小高度
  final double? minHeight;
  
  /// 是否自动调整大小以适应内容
  final bool autoSize;
  
  /// 文字对齐方式
  final TextAlign textAlign;
  
  /// 是否显示按钮
  final bool visible;
  
  /// 按钮透明度
  final double? opacity;
  
  /// 按钮变换效果
  final Matrix4? transform;
  
  /// 按钮约束
  final BoxConstraints? constraints;
  
  /// 按钮对齐方式
  final AlignmentGeometry? alignment;
  
  const ViewMoreButtonWidget({
    super.key,
    required this.text,
    this.textStyle,
    this.rightIcon,
    this.rightIconSize,
    this.rightIconColor,
    this.textIconSpacing,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.borderRadius,
    this.border,
    this.borderColor,
    this.borderWidth,
    this.boxShadow,
    this.onTap,
    this.showRippleEffect = true,
    this.enabled = true,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.disabledIconColor,
    this.minWidth,
    this.minHeight,
    this.autoSize = true,
    this.textAlign = TextAlign.center,
    this.visible = true,
    this.opacity,
    this.transform,
    this.constraints,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();
    
    Widget button = Container(
      width: width,
      height: height,
      margin: margin,
      constraints: constraints,
      alignment: alignment,
      transform: transform,
      child: Material(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        elevation: 0,
        shadowColor: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          splashColor: showRippleEffect ? null : Colors.transparent,
          highlightColor: showRippleEffect ? null : Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
              border: _getBorder(),
              boxShadow: boxShadow,
            ),
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            constraints: BoxConstraints(
              minWidth: minWidth ?? 0,
              minHeight: minHeight ?? 0,
            ),
            child: _buildContent(),
          ),
        ),
      ),
    );
    
    if (opacity != null) {
      button = Opacity(
        opacity: opacity!,
        child: button,
      );
    }
    
    return button;
  }

  /// 构建按钮内容
  Widget _buildContent() {
    if (autoSize) {
      return IntrinsicWidth(
        child: IntrinsicHeight(
          child: _buildButtonContent(),
        ),
      );
    } else {
      return _buildButtonContent();
    }
  }

  /// 构建按钮内部内容
  Widget _buildButtonContent() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 文字
        Flexible(
          child: Text(
            text,
            style: _getTextStyle(),
            textAlign: textAlign,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // 间距
        if (rightIcon != null) ...[
          SizedBox(width: textIconSpacing ?? 8.0),
          // 右侧图标
          SizedBox(
            width: rightIconSize ?? 16.0,
            height: rightIconSize ?? 16.0,
            child: _getRightIcon(),
          ),
        ],
      ],
    );
  }

  /// 获取背景颜色
  Color _getBackgroundColor() {
    if (!enabled) {
      return disabledBackgroundColor ?? Colors.grey.shade300;
    }
    return backgroundColor ?? Colors.grey.shade200;
  }

  /// 获取文字样式
  TextStyle _getTextStyle() {
    final baseStyle = textStyle ?? const TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    );
    
    if (!enabled) {
      return baseStyle.copyWith(
        color: disabledTextColor ?? Colors.grey.shade500,
      );
    }
    
    return baseStyle;
  }

  /// 获取右侧图标
  Widget _getRightIcon() {
    if (rightIcon == null) return const SizedBox.shrink();
    
    Widget icon = rightIcon!;
    
    if (rightIconColor != null || (!enabled && disabledIconColor != null)) {
      icon = IconTheme(
        data: IconThemeData(
          color: !enabled 
              ? (disabledIconColor ?? Colors.grey.shade500)
              : (rightIconColor ?? Colors.grey),
          size: rightIconSize ?? 16.0,
        ),
        child: icon,
      );
    }
    
    return icon;
  }

  /// 获取边框
  Border? _getBorder() {
    if (border != null) return border;
    
    if (borderColor != null) {
      return Border.all(
        color: borderColor!,
        width: borderWidth ?? 1.0,
      );
    }
    
    return null;
  }
}

/// 查看更多按钮数据模型
class ViewMoreButtonData {
  /// 按钮文字内容
  final String text;
  
  /// 右侧图标
  final Widget? rightIcon;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  const ViewMoreButtonData({
    required this.text,
    this.rightIcon,
    this.onTap,
  });
}

/// 查看更多按钮配置
class ViewMoreButtonConfig {
  /// 文字样式配置
  final TextStyle? textStyle;
  
  /// 右侧图标大小
  final double? rightIconSize;
  
  /// 右侧图标颜色
  final Color? rightIconColor;
  
  /// 文字和图标间距
  final double? textIconSpacing;
  
  /// 按钮样式配置
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final List<BoxShadow>? boxShadow;
  
  /// 交互配置
  final bool showRippleEffect;
  final bool enabled;
  final Color? disabledBackgroundColor;
  final Color? disabledTextColor;
  final Color? disabledIconColor;
  
  /// 布局配置
  final double? minWidth;
  final double? minHeight;
  final bool autoSize;
  final TextAlign textAlign;
  final bool visible;
  final double? opacity;
  final BoxConstraints? constraints;
  final AlignmentGeometry? alignment;
  
  const ViewMoreButtonConfig({
    this.textStyle,
    this.rightIconSize,
    this.rightIconColor,
    this.textIconSpacing,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.boxShadow,
    this.showRippleEffect = true,
    this.enabled = true,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.disabledIconColor,
    this.minWidth,
    this.minHeight,
    this.autoSize = true,
    this.textAlign = TextAlign.center,
    this.visible = true,
    this.opacity,
    this.constraints,
    this.alignment,
  });
  
  /// 应用配置到组件
  ViewMoreButtonWidget applyTo(ViewMoreButtonWidget widget, ViewMoreButtonData data) {
    return ViewMoreButtonWidget(
      text: data.text,
      textStyle: textStyle ?? widget.textStyle,
      rightIcon: data.rightIcon ?? widget.rightIcon,
      rightIconSize: rightIconSize ?? widget.rightIconSize,
      rightIconColor: rightIconColor ?? widget.rightIconColor,
      textIconSpacing: textIconSpacing ?? widget.textIconSpacing,
      backgroundColor: backgroundColor ?? widget.backgroundColor,
      padding: padding ?? widget.padding,
      margin: margin ?? widget.margin,
      height: height ?? widget.height,
      width: width ?? widget.width,
      borderRadius: borderRadius ?? widget.borderRadius,
      borderColor: borderColor ?? widget.borderColor,
      borderWidth: borderWidth ?? widget.borderWidth,
      boxShadow: boxShadow ?? widget.boxShadow,
      onTap: data.onTap ?? widget.onTap,
      showRippleEffect: showRippleEffect,
      enabled: enabled,
      disabledBackgroundColor: disabledBackgroundColor ?? widget.disabledBackgroundColor,
      disabledTextColor: disabledTextColor ?? widget.disabledTextColor,
      disabledIconColor: disabledIconColor ?? widget.disabledIconColor,
      minWidth: minWidth ?? widget.minWidth,
      minHeight: minHeight ?? widget.minHeight,
      autoSize: autoSize,
      textAlign: textAlign,
      visible: visible,
      opacity: opacity ?? widget.opacity,
      constraints: constraints ?? widget.constraints,
      alignment: alignment ?? widget.alignment,
    );
  }
}

/// 查看更多按钮预设样式
class ViewMoreButtonStyles {
  /// 默认样式
  static const ViewMoreButtonConfig defaultStyle = ViewMoreButtonConfig(
    backgroundColor: Color(0xFFF5F5F5),
    textStyle: TextStyle(
      color: Color(0xFF666666),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    rightIconColor: Color(0xFF666666),
    rightIconSize: 16.0,
    textIconSpacing: 8.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    borderRadius: 8.0,
  );
  
  /// 主要样式
  static const ViewMoreButtonConfig primaryStyle = ViewMoreButtonConfig(
    backgroundColor: Color(0xFF2196F3),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    rightIconColor: Colors.white,
    rightIconSize: 16.0,
    textIconSpacing: 8.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    borderRadius: 8.0,
  );
  
  /// 次要样式
  static const ViewMoreButtonConfig secondaryStyle = ViewMoreButtonConfig(
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      color: Color(0xFF2196F3),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    rightIconColor: Color(0xFF2196F3),
    rightIconSize: 16.0,
    textIconSpacing: 8.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    borderRadius: 8.0,
    borderColor: Color(0xFF2196F3),
    borderWidth: 1.0,
  );
  
  /// 小尺寸样式
  static const ViewMoreButtonConfig smallStyle = ViewMoreButtonConfig(
    backgroundColor: Color(0xFFF5F5F5),
    textStyle: TextStyle(
      color: Color(0xFF666666),
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    rightIconColor: Color(0xFF666666),
    rightIconSize: 14.0,
    textIconSpacing: 6.0,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    borderRadius: 6.0,
  );
  
  /// 大尺寸样式
  static const ViewMoreButtonConfig largeStyle = ViewMoreButtonConfig(
    backgroundColor: Color(0xFFF5F5F5),
    textStyle: TextStyle(
      color: Color(0xFF666666),
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    rightIconColor: Color(0xFF666666),
    rightIconSize: 18.0,
    textIconSpacing: 10.0,
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
    borderRadius: 10.0,
  );
}
