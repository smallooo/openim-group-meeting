import 'package:flutter/material.dart';

/// 加密货币卡片组件
/// 包含左上角标签（图标+文字）、中间数值显示、底部百分比变化显示
class CryptoCardWidget extends StatelessWidget {
  /// 卡片宽度
  final double? width;
  
  /// 卡片高度
  final double? height;
  
  /// 卡片背景颜色
  final Color? backgroundColor;
  
  /// 卡片边框颜色
  final Color? borderColor;
  
  /// 卡片边框宽度
  final double? borderWidth;
  
  /// 卡片圆角半径
  final double? borderRadius;
  
  /// 卡片内边距
  final EdgeInsets? padding;
  
  /// 卡片外边距
  final EdgeInsets? margin;
  
  /// 卡片阴影
  final List<BoxShadow>? boxShadow;
  
  // 左上角标签相关属性
  /// 左上角标签背景颜色
  final Color? labelBackgroundColor;
  
  /// 左上角标签圆角半径
  final double? labelBorderRadius;
  
  /// 左上角标签内边距
  final EdgeInsets? labelPadding;
  
  /// 左上角标签图标
  final Widget? labelIcon;
  
  /// 左上角标签图标大小
  final double? labelIconSize;
  
  /// 左上角标签文字
  final String? labelText;
  
  /// 左上角标签文字样式
  final TextStyle? labelTextStyle;
  
  /// 左上角标签图标和文字间距
  final double? labelIconTextSpacing;
  
  // 中间数值相关属性
  /// 中间数值文字
  final String? valueText;
  
  /// 中间数值文字样式
  final TextStyle? valueTextStyle;
  
  /// 中间数值和标签间距
  final double? valueTopSpacing;
  
  /// 中间数值和底部百分比间距
  final double? valueBottomSpacing;
  
  // 底部百分比相关属性
  /// 底部百分比变化图标
  final Widget? percentageIcon;
  
  /// 底部百分比变化图标大小
  final double? percentageIconSize;
  
  /// 底部百分比变化文字
  final String? percentageText;
  
  /// 底部百分比变化文字样式
  final TextStyle? percentageTextStyle;
  
  /// 底部百分比变化图标和文字间距
  final double? percentageIconTextSpacing;
  
  /// 底部百分比变化颜色（图标和文字）
  final Color? percentageColor;
  
  /// 是否显示底部百分比变化
  final bool showPercentage;
  
  /// 点击回调
  final VoidCallback? onTap;
  
  const CryptoCardWidget({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.boxShadow,
    this.labelBackgroundColor,
    this.labelBorderRadius,
    this.labelPadding,
    this.labelIcon,
    this.labelIconSize,
    this.labelText,
    this.labelTextStyle,
    this.labelIconTextSpacing,
    this.valueText,
    this.valueTextStyle,
    this.valueTopSpacing,
    this.valueBottomSpacing,
    this.percentageIcon,
    this.percentageIconSize,
    this.percentageText,
    this.percentageTextStyle,
    this.percentageIconTextSpacing,
    this.percentageColor,
    this.showPercentage = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: Material(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
        elevation: 0,
        shadowColor: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              border: borderColor != null
                  ? Border.all(
                      color: borderColor!,
                      width: borderWidth ?? 1.0,
                    )
                  : null,
              boxShadow: boxShadow,
            ),
            child: Stack(
              children: [
                // 左上角标签 - 与卡片整体左上角对齐
                if (labelText != null || labelIcon != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: _buildLabel(),
                  ),
                // 内容区域 - 添加内边距
                Padding(
                  padding: padding ?? const EdgeInsets.all(16.0),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: height != null ? height! - 32.0 : double.infinity,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 中间数值
                          if (valueText != null) ...[
                            SizedBox(height: valueTopSpacing ?? 12.0),  // 减少默认间距避免溢出
                            _buildValue(),
                            SizedBox(height: valueBottomSpacing ?? 2.0),
                          ],
                          // 底部百分比变化
                          if (showPercentage && (percentageText != null || percentageIcon != null))
                            _buildPercentage(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 构建左上角标签
  Widget _buildLabel() {
    return Container(
      padding: labelPadding ?? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: labelBackgroundColor ?? const Color(0xFF6A0DAD),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(labelBorderRadius ?? 8.0),
          bottomRight: Radius.circular(labelBorderRadius ?? 8.0),
          topRight: Radius.zero,
          bottomLeft: Radius.zero,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (labelIcon != null) ...[
            SizedBox(
              width: labelIconSize ?? 16.0,
              height: labelIconSize ?? 16.0,
              child: labelIcon,
            ),
            SizedBox(width: labelIconTextSpacing ?? 4.0),
          ],
          if (labelText != null)
            Text(
              labelText!,
              style: labelTextStyle ?? 
                const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
            ),
        ],
      ),
    );
  }

  /// 构建中间数值
  Widget _buildValue() {
    return Text(
      valueText ?? '',
      style: valueTextStyle ?? 
        const TextStyle(
          color: Colors.black,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  /// 构建底部百分比变化
  Widget _buildPercentage() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (percentageIcon != null) ...[
          SizedBox(
            width: percentageIconSize ?? 16.0,
            height: percentageIconSize ?? 16.0,
            child: percentageIcon,
          ),
          SizedBox(width: percentageIconTextSpacing ?? 4.0),
        ],
        if (percentageText != null)
          Text(
            percentageText!,
            style: percentageTextStyle ?? 
              TextStyle(
                color: percentageColor ?? const Color(0xFF008000),
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }
}

/// 加密货币卡片数据模型
class CryptoCardData {
  /// 标签图标
  final Widget? labelIcon;
  
  /// 标签文字
  final String? labelText;
  
  /// 数值文字
  final String? valueText;
  
  /// 百分比变化图标
  final Widget? percentageIcon;
  
  /// 百分比变化文字
  final String? percentageText;
  
  /// 百分比变化颜色
  final Color? percentageColor;
  
  const CryptoCardData({
    this.labelIcon,
    this.labelText,
    this.valueText,
    this.percentageIcon,
    this.percentageText,
    this.percentageColor,
  });
}

/// 加密货币卡片配置
class CryptoCardConfig {
  /// 卡片样式配置
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;
  
  /// 标签样式配置
  final Color? labelBackgroundColor;
  final double? labelBorderRadius;
  final EdgeInsets? labelPadding;
  final double? labelIconSize;
  final TextStyle? labelTextStyle;
  final double? labelIconTextSpacing;
  
  /// 数值样式配置
  final TextStyle? valueTextStyle;
  final double? valueTopSpacing;
  final double? valueBottomSpacing;
  
  /// 百分比样式配置
  final double? percentageIconSize;
  final TextStyle? percentageTextStyle;
  final double? percentageIconTextSpacing;
  final bool showPercentage;
  
  const CryptoCardConfig({
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.boxShadow,
    this.labelBackgroundColor,
    this.labelBorderRadius,
    this.labelPadding,
    this.labelIconSize,
    this.labelTextStyle,
    this.labelIconTextSpacing,
    this.valueTextStyle,
    this.valueTopSpacing,
    this.valueBottomSpacing,
    this.percentageIconSize,
    this.percentageTextStyle,
    this.percentageIconTextSpacing,
    this.showPercentage = true,
  });
  
  /// 应用配置到组件
  CryptoCardWidget applyTo(CryptoCardWidget widget, CryptoCardData data) {
    return CryptoCardWidget(
      width: width ?? widget.width,
      height: height ?? widget.height,
      backgroundColor: backgroundColor ?? widget.backgroundColor,
      borderColor: borderColor ?? widget.borderColor,
      borderWidth: borderWidth ?? widget.borderWidth,
      borderRadius: borderRadius ?? widget.borderRadius,
      padding: padding ?? widget.padding,
      margin: margin ?? widget.margin,
      boxShadow: boxShadow ?? widget.boxShadow,
      labelBackgroundColor: labelBackgroundColor ?? widget.labelBackgroundColor,
      labelBorderRadius: labelBorderRadius ?? widget.labelBorderRadius,
      labelPadding: labelPadding ?? widget.labelPadding,
      labelIcon: data.labelIcon ?? widget.labelIcon,
      labelIconSize: labelIconSize ?? widget.labelIconSize,
      labelText: data.labelText ?? widget.labelText,
      labelTextStyle: labelTextStyle ?? widget.labelTextStyle,
      labelIconTextSpacing: labelIconTextSpacing ?? widget.labelIconTextSpacing,
      valueText: data.valueText ?? widget.valueText,
      valueTextStyle: valueTextStyle ?? widget.valueTextStyle,
      valueTopSpacing: valueTopSpacing ?? widget.valueTopSpacing,
      valueBottomSpacing: valueBottomSpacing ?? widget.valueBottomSpacing,
      percentageIcon: data.percentageIcon ?? widget.percentageIcon,
      percentageIconSize: percentageIconSize ?? widget.percentageIconSize,
      percentageText: data.percentageText ?? widget.percentageText,
      percentageTextStyle: percentageTextStyle ?? widget.percentageTextStyle,
      percentageIconTextSpacing: percentageIconTextSpacing ?? widget.percentageIconTextSpacing,
      percentageColor: data.percentageColor ?? widget.percentageColor,
      showPercentage: showPercentage,
      onTap: widget.onTap,
    );
  }
}
