import 'package:flutter/material.dart';

/// 文字按钮组件
/// 支持文字对齐、圆角、完全自定义的按钮组件
class TextButtonWidget extends StatelessWidget {
  /// 按钮文字内容
  final String text;
  
  /// 文字样式
  final TextStyle? textStyle;
  
  /// 文字对齐方式
  final TextAlign textAlign;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double? borderWidth;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 宽度
  final double? width;
  
  /// 高度
  final double? height;
  
  /// 最小宽度
  final double? minWidth;
  
  /// 最小高度
  final double? minHeight;
  
  /// 是否启用按钮
  final bool enabled;
  
  /// 禁用时的背景颜色
  final Color? disabledBackgroundColor;
  
  /// 禁用时的文字颜色
  final Color? disabledTextColor;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 波纹效果颜色
  final Color? rippleColor;
  
  /// 按钮形状
  final OutlinedBorder? shape;
  
  /// 阴影效果
  final List<BoxShadow>? boxShadow;
  
  /// 渐变背景
  final Gradient? gradient;
  
  /// 是否显示加载状态
  final bool isLoading;
  
  /// 加载指示器
  final Widget? loadingWidget;
  
  /// 加载指示器大小
  final double? loadingSize;
  
  /// 加载指示器颜色
  final Color? loadingColor;

  const TextButtonWidget({
    super.key,
    required this.text,
    this.textStyle,
    this.textAlign = TextAlign.center,
    this.onTap,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    this.margin,
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.enabled = true,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.showRippleEffect = true,
    this.rippleColor,
    this.shape,
    this.boxShadow,
    this.gradient,
    this.isLoading = false,
    this.loadingWidget,
    this.loadingSize = 16.0,
    this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      constraints: BoxConstraints(
        minWidth: minWidth ?? 0.0,
        minHeight: minHeight ?? 0.0,
      ),
      child: Material(
        color: Colors.transparent,
        child: _buildButton(),
      ),
    );
  }

  /// 构建按钮
  Widget _buildButton() {
    if (isLoading) {
      return _buildLoadingButton();
    }

    if (showRippleEffect) {
      return InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: _getBorderRadius(),
        splashColor: rippleColor,
        highlightColor: rippleColor?.withOpacity(0.1),
        child: _buildButtonContent(),
      );
    } else {
      return GestureDetector(
        onTap: enabled ? onTap : null,
        child: _buildButtonContent(),
      );
    }
  }

  /// 构建加载状态按钮
  Widget _buildLoadingButton() {
    return Container(
      decoration: _getDecoration(),
      child: InkWell(
        onTap: null, // 加载状态时禁用点击
        borderRadius: _getBorderRadius(),
        child: _buildLoadingContent(),
      ),
    );
  }

  /// 构建按钮内容
  Widget _buildButtonContent() {
    return Container(
      padding: padding,
      decoration: _getDecoration(),
      child: _buildText(),
    );
  }

  /// 构建加载内容
  Widget _buildLoadingContent() {
    return Container(
      padding: padding,
      decoration: _getDecoration(),
      child: Row(
        mainAxisAlignment: _getMainAxisAlignment(),
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLoadingIndicator(),
          const SizedBox(width: 8.0),
          _buildText(),
        ],
      ),
    );
  }

  /// 构建文字
  Widget _buildText() {
    return Text(
      text,
      textAlign: textAlign,
      style: _getTextStyle(),
    );
  }

  /// 构建加载指示器
  Widget _buildLoadingIndicator() {
    if (loadingWidget != null) {
      return SizedBox(
        width: loadingSize,
        height: loadingSize,
        child: loadingWidget,
      );
    }

    return SizedBox(
      width: loadingSize,
      height: loadingSize,
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
        valueColor: AlwaysStoppedAnimation<Color>(
          loadingColor ?? _getTextColor(),
        ),
      ),
    );
  }

  /// 获取装饰器
  BoxDecoration _getDecoration() {
    final effectiveBackgroundColor = enabled 
      ? (gradient != null ? null : (backgroundColor ?? Colors.white))
      : (disabledBackgroundColor ?? Colors.grey.shade300);

    return BoxDecoration(
      color: effectiveBackgroundColor,
      gradient: enabled ? gradient : null,
      borderRadius: _getBorderRadius(),
      border: _getBorder(),
      boxShadow: boxShadow,
    );
  }

  /// 获取边框
  Border? _getBorder() {
    if (borderWidth == null || borderWidth! <= 0) return null;
    
    return Border.all(
      color: enabled 
        ? (borderColor ?? Colors.grey.shade300)
        : (disabledBackgroundColor ?? Colors.grey.shade300),
      width: borderWidth!,
    );
  }

  /// 获取圆角
  BorderRadius _getBorderRadius() {
    if (shape != null) {
      if (shape is RoundedRectangleBorder) {
        final roundedShape = shape as RoundedRectangleBorder;
        final borderRadiusGeometry = roundedShape.borderRadius;
        if (borderRadiusGeometry is BorderRadius) {
          return borderRadiusGeometry;
        }
      }
    }
    
    return BorderRadius.circular(borderRadius ?? 8.0);
  }

  /// 获取文字样式
  TextStyle _getTextStyle() {
    final baseStyle = textStyle ?? const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    );

    return baseStyle.copyWith(
      color: enabled 
        ? (textStyle?.color ?? Colors.black87)
        : (disabledTextColor ?? Colors.grey.shade600),
    );
  }

  /// 获取文字颜色
  Color _getTextColor() {
    return enabled 
      ? (textStyle?.color ?? Colors.black87)
      : (disabledTextColor ?? Colors.grey.shade600);
  }

  /// 获取主轴对齐方式
  MainAxisAlignment _getMainAxisAlignment() {
    switch (textAlign) {
      case TextAlign.left:
        return MainAxisAlignment.start;
      case TextAlign.right:
        return MainAxisAlignment.end;
      case TextAlign.center:
      default:
        return MainAxisAlignment.center;
    }
  }
}

/// 预设样式的文字按钮组件
class PresetTextButtonWidget extends StatelessWidget {
  /// 按钮文字内容
  final String text;
  
  /// 按钮类型
  final TextButtonType buttonType;
  
  /// 按钮大小
  final TextButtonSize buttonSize;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 是否启用按钮
  final bool enabled;
  
  /// 是否显示加载状态
  final bool isLoading;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 自定义样式
  final TextButtonStyle? style;

  const PresetTextButtonWidget({
    super.key,
    required this.text,
    this.buttonType = TextButtonType.primary,
    this.buttonSize = TextButtonSize.medium,
    this.onTap,
    this.enabled = true,
    this.isLoading = false,
    this.showRippleEffect = true,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButtonWidget(
      text: text,
      textStyle: _getTextStyle(),
      textAlign: _getTextAlign(),
      onTap: onTap,
      backgroundColor: _getBackgroundColor(),
      borderColor: _getBorderColor(),
      borderWidth: _getBorderWidth(),
      borderRadius: _getBorderRadius(),
      padding: _getPadding(),
      width: style?.width,
      height: _getHeight(),
      minWidth: _getMinWidth(),
      minHeight: _getMinHeight(),
      enabled: enabled,
      disabledBackgroundColor: _getDisabledBackgroundColor(),
      disabledTextColor: _getDisabledTextColor(),
      showRippleEffect: showRippleEffect,
      rippleColor: _getRippleColor(),
      boxShadow: _getBoxShadow(),
      gradient: _getGradient(),
      isLoading: isLoading,
      loadingSize: _getLoadingSize(),
      loadingColor: _getLoadingColor(),
    );
  }

  /// 获取文字样式
  TextStyle? _getTextStyle() {
    if (style?.textStyle != null) return style!.textStyle;
    
    final baseSize = _getBaseFontSize();
    final fontWeight = _getFontWeight();
    
    return TextStyle(
      fontSize: baseSize,
      fontWeight: fontWeight,
      color: _getTextColor(),
    );
  }

  /// 获取基础字体大小
  double _getBaseFontSize() {
    switch (buttonSize) {
      case TextButtonSize.small:
        return 14.0;
      case TextButtonSize.medium:
        return 16.0;
      case TextButtonSize.large:
        return 18.0;
    }
  }

  /// 获取字体粗细
  FontWeight _getFontWeight() {
    switch (buttonType) {
      case TextButtonType.primary:
        return FontWeight.w600;
      case TextButtonType.secondary:
        return FontWeight.w500;
      case TextButtonType.outline:
        return FontWeight.w500;
      case TextButtonType.text:
        return FontWeight.w500;
    }
  }

  /// 获取文字颜色
  Color _getTextColor() {
    if (style?.textStyle?.color != null) return style!.textStyle!.color!;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return Colors.white;
      case TextButtonType.secondary:
        return Colors.blue;
      case TextButtonType.outline:
        return Colors.blue;
      case TextButtonType.text:
        return Colors.blue;
    }
  }

  /// 获取文字对齐方式
  TextAlign _getTextAlign() {
    return style?.textAlign ?? TextAlign.center;
  }

  /// 获取背景颜色
  Color? _getBackgroundColor() {
    if (style?.backgroundColor != null) return style!.backgroundColor;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return Colors.blue;
      case TextButtonType.secondary:
        return Colors.blue.shade50;
      case TextButtonType.outline:
        return Colors.transparent;
      case TextButtonType.text:
        return Colors.transparent;
    }
  }

  /// 获取边框颜色
  Color? _getBorderColor() {
    if (style?.borderColor != null) return style!.borderColor;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return null;
      case TextButtonType.secondary:
        return null;
      case TextButtonType.outline:
        return Colors.blue;
      case TextButtonType.text:
        return null;
    }
  }

  /// 获取边框宽度
  double? _getBorderWidth() {
    if (style?.borderWidth != null) return style!.borderWidth;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return null;
      case TextButtonType.secondary:
        return null;
      case TextButtonType.outline:
        return 1.0;
      case TextButtonType.text:
        return null;
    }
  }

  /// 获取圆角半径
  double? _getBorderRadius() {
    if (style?.borderRadius != null) return style!.borderRadius;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return 6.0;
      case TextButtonSize.medium:
        return 8.0;
      case TextButtonSize.large:
        return 10.0;
    }
  }

  /// 获取内边距
  EdgeInsetsGeometry _getPadding() {
    if (style?.padding != null) return style!.padding!;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);
      case TextButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0);
      case TextButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0);
    }
  }

  /// 获取高度
  double? _getHeight() {
    if (style?.height != null) return style!.height;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return 32.0;
      case TextButtonSize.medium:
        return 40.0;
      case TextButtonSize.large:
        return 48.0;
    }
  }

  /// 获取最小宽度
  double? _getMinWidth() {
    if (style?.minWidth != null) return style!.minWidth;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return 60.0;
      case TextButtonSize.medium:
        return 80.0;
      case TextButtonSize.large:
        return 100.0;
    }
  }

  /// 获取最小高度
  double? _getMinHeight() {
    if (style?.minHeight != null) return style!.minHeight;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return 32.0;
      case TextButtonSize.medium:
        return 40.0;
      case TextButtonSize.large:
        return 48.0;
    }
  }

  /// 获取禁用背景颜色
  Color? _getDisabledBackgroundColor() {
    if (style?.disabledBackgroundColor != null) return style!.disabledBackgroundColor;
    return Colors.grey.shade300;
  }

  /// 获取禁用文字颜色
  Color? _getDisabledTextColor() {
    if (style?.disabledTextColor != null) return style!.disabledTextColor;
    return Colors.grey.shade600;
  }

  /// 获取波纹颜色
  Color? _getRippleColor() {
    if (style?.rippleColor != null) return style!.rippleColor;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return Colors.white.withOpacity(0.2);
      case TextButtonType.secondary:
        return Colors.blue.withOpacity(0.1);
      case TextButtonType.outline:
        return Colors.blue.withOpacity(0.1);
      case TextButtonType.text:
        return Colors.blue.withOpacity(0.1);
    }
  }

  /// 获取阴影效果
  List<BoxShadow>? _getBoxShadow() {
    if (style?.boxShadow != null) return style!.boxShadow;
    
    switch (buttonType) {
      case TextButtonType.primary:
        return [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ];
      case TextButtonType.secondary:
        return null;
      case TextButtonType.outline:
        return null;
      case TextButtonType.text:
        return null;
    }
  }

  /// 获取渐变背景
  Gradient? _getGradient() {
    if (style?.gradient != null) return style!.gradient;
    return null;
  }

  /// 获取加载指示器大小
  double _getLoadingSize() {
    if (style?.loadingSize != null) return style!.loadingSize!;
    
    switch (buttonSize) {
      case TextButtonSize.small:
        return 12.0;
      case TextButtonSize.medium:
        return 16.0;
      case TextButtonSize.large:
        return 20.0;
    }
  }

  /// 获取加载指示器颜色
  Color? _getLoadingColor() {
    if (style?.loadingColor != null) return style!.loadingColor;
    return _getTextColor();
  }
}

/// 按钮类型枚举
enum TextButtonType {
  primary,    // 主要按钮
  secondary,  // 次要按钮
  outline,    // 轮廓按钮
  text,       // 文字按钮
}

/// 按钮大小枚举
enum TextButtonSize {
  small,   // 小按钮
  medium,  // 中等按钮
  large,   // 大按钮
}

/// 文字按钮样式配置
class TextButtonStyle {
  /// 文字样式
  final TextStyle? textStyle;
  
  /// 文字对齐方式
  final TextAlign? textAlign;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double? borderWidth;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 宽度
  final double? width;
  
  /// 高度
  final double? height;
  
  /// 最小宽度
  final double? minWidth;
  
  /// 最小高度
  final double? minHeight;
  
  /// 禁用背景颜色
  final Color? disabledBackgroundColor;
  
  /// 禁用文字颜色
  final Color? disabledTextColor;
  
  /// 波纹颜色
  final Color? rippleColor;
  
  /// 阴影效果
  final List<BoxShadow>? boxShadow;
  
  /// 渐变背景
  final Gradient? gradient;
  
  /// 加载指示器大小
  final double? loadingSize;
  
  /// 加载指示器颜色
  final Color? loadingColor;

  const TextButtonStyle({
    this.textStyle,
    this.textAlign,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.disabledBackgroundColor,
    this.disabledTextColor,
    this.rippleColor,
    this.boxShadow,
    this.gradient,
    this.loadingSize,
    this.loadingColor,
  });
}
