import 'package:flutter/material.dart';

/// 解锁卡片组件
/// 包含左上角文本、右上角图片、中间水平居中文本和底部按钮
class UnlockCardWidget extends StatelessWidget {
  /// 卡片宽度
  final double? width;
  
  /// 卡片高度
  final double? height;
  
  /// 是否自适应高度
  final bool autoHeight;
  
  /// 左上角文本位置偏移
  final Offset? topLeftTextOffset;
  
  /// 中间文本位置偏移
  final Offset? mainTextOffset;
  
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
  
  // 左上角文本相关属性
  /// 左上角文本内容
  final String? topLeftText;
  
  /// 左上角文本样式
  final TextStyle? topLeftTextStyle;
  
  /// 左上角文本内边距
  final EdgeInsets? topLeftPadding;
  
  /// 左上角文本背景颜色
  final Color? topLeftBackgroundColor;
  
  /// 左上角文本圆角半径
  final double? topLeftBorderRadius;
  
  // 右上角图片相关属性
  /// 右上角图片
  final Widget? topRightImage;
  
  /// 右上角图片大小
  final double? topRightImageSize;
  
  /// 右上角图片内边距
  final EdgeInsets? topRightPadding;
  
  /// 右上角图片背景颜色
  final Color? topRightBackgroundColor;
  
  /// 右上角图片圆角半径
  final double? topRightBorderRadius;
  
  /// 右上角图片位置偏移
  final Offset? topRightImageOffset;
  
  // 中间文本相关属性
  /// 中间主文本内容
  final String? mainText;
  
  /// 中间主文本样式
  final TextStyle? mainTextStyle;
  
  /// 中间副文本内容
  final String? subText;
  
  /// 中间副文本样式
  final TextStyle? subTextStyle;
  
  /// 主文本和副文本间距
  final double? mainSubTextSpacing;
  
  /// 中间文本区域内边距
  final EdgeInsets? centerTextPadding;
  
  // 底部按钮相关属性
  /// 底部按钮文本
  final String? buttonText;
  
  /// 底部按钮样式
  final ButtonStyle? buttonStyle;
  
  /// 底部按钮文本样式
  final TextStyle? buttonTextStyle;
  
  /// 底部按钮背景颜色
  final Color? buttonBackgroundColor;
  
  /// 底部按钮圆角半径
  final double? buttonBorderRadius;
  
  /// 底部按钮高度
  final double? buttonHeight;
  
  /// 底部按钮宽度
  final double? buttonWidth;
  
  /// 底部按钮内边距
  final EdgeInsets? buttonPadding;
  
  /// 按钮点击回调
  final VoidCallback? onButtonTap;
  
  /// 整个卡片点击回调
  final VoidCallback? onCardTap;
  
  const UnlockCardWidget({
    super.key,
    this.width,
    this.height,
    this.autoHeight = false,
    this.topLeftTextOffset,
    this.mainTextOffset,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.boxShadow,
    this.topLeftText,
    this.topLeftTextStyle,
    this.topLeftPadding,
    this.topLeftBackgroundColor,
    this.topLeftBorderRadius,
    this.topRightImage,
    this.topRightImageSize,
    this.topRightPadding,
    this.topRightBackgroundColor,
    this.topRightBorderRadius,
    this.topRightImageOffset,
    this.mainText,
    this.mainTextStyle,
    this.subText,
    this.subTextStyle,
    this.mainSubTextSpacing,
    this.centerTextPadding,
    this.buttonText,
    this.buttonStyle,
    this.buttonTextStyle,
    this.buttonBackgroundColor,
    this.buttonBorderRadius,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.onButtonTap,
    this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget cardContent = Material(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
        elevation: 0,
        shadowColor: Colors.transparent,
        child: InkWell(
          onTap: onCardTap,
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
          child: _buildCardContent(),
        ),
      ),
    );

    // 根据是否自适应高度来决定容器
    if (autoHeight) {
      return Container(
        width: width,
        margin: margin,
        child: cardContent,
      );
    } else {
      return Container(
        width: width,
        height: height,
        margin: margin,
        child: cardContent,
      );
    }
  }

  /// 构建卡片内容
  Widget _buildCardContent() {
    if (autoHeight) {
      // 自适应高度模式：使用 IntrinsicHeight 和 Flexible
      return IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 顶部区域：左上角文本和右上角图片
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 左上角文本
                    if (topLeftText != null)
                      _buildTopLeftText(),
                    // 右上角图片
                    if (topRightImage != null)
                      _buildTopRightImage(),
                  ],
                ),
            // 中间内容区域 - 自适应
            Flexible(
                  child: Padding(
                    padding: padding ?? const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                      children: [
                    // 中间文本区域
                        if (mainText != null || subText != null) ...[
                      SizedBox(height: centerTextPadding?.top ?? 16.0),
                          _buildCenterText(),
                      SizedBox(height: centerTextPadding?.bottom ?? 8.0),
                        ],
                    // 底部按钮
                        if (buttonText != null)
                          Center(
                            child: _buildBottomButton(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      );
    } else {
      // 固定高度模式：使用Stack绝对定位布局，更精确控制位置
      return Stack(
        children: [
          // 左上角文本 - 可调整位置
          if (topLeftText != null)
            Positioned(
              top: (topLeftTextOffset?.dy ?? 0),
              left: (topLeftTextOffset?.dx ?? 0),
              child: _buildTopLeftText(),
            ),
          // 右上角图片
          if (topRightImage != null)
            Positioned(
              top: topRightImageOffset?.dy ?? 0,
              right: topRightImageOffset?.dx ?? 0,
              child: _buildTopRightImage(),
            ),
          // 中间文本 - 可调整位置
          if (mainText != null || subText != null)
            Positioned(
              top: (mainTextOffset?.dy ?? 32.0),
              left: (mainTextOffset?.dx ?? 8.0),
              right: 8.0,
              child: Align(
                alignment: Alignment.centerLeft, // 居左对齐
                child: _buildCenterText(),
              ),
            ),
          // 底部按钮
          if (buttonText != null)
            Positioned(
              bottom: 8.0,
              left: 8.0,
              right: 8.0,
              child: _buildBottomButton(),
            ),
        ],
      );
    }
  }

  /// 构建左上角文本
  Widget _buildTopLeftText() {
    return Container(
      padding: topLeftPadding ?? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: topLeftBackgroundColor != null ? BoxDecoration(
        color: topLeftBackgroundColor,
        borderRadius: BorderRadius.circular(topLeftBorderRadius ?? 8.0),
      ) : null, // 只有设置了背景色才显示背景
      child: Text(
        topLeftText!,
        style: topLeftTextStyle ?? 
          const TextStyle(
            color: Colors.black, // 改为黑色字体
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
      ),
    );
  }

  /// 构建右上角图片
  Widget _buildTopRightImage() {
    return Container(
      padding: topRightPadding ?? const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: topRightBackgroundColor,
        borderRadius: BorderRadius.circular(topRightBorderRadius ?? 8.0),
      ),
      child: SizedBox(
        width: topRightImageSize ?? 24.0,
        height: topRightImageSize ?? 24.0,
        child: topRightImage,
      ),
    );
  }

  /// 构建中间文本
  Widget _buildCenterText() {
    return Padding(
      padding: centerTextPadding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 改为左对齐
        mainAxisSize: MainAxisSize.min,
        children: [
          // 主文本
          if (mainText != null)
            Text(
              mainText!,
              style: mainTextStyle ?? 
                const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              textAlign: TextAlign.left, // 文本左对齐
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          // 主文本和副文本间距
          if (mainText != null && subText != null)
            SizedBox(height: mainSubTextSpacing ?? 8.0),
          // 副文本
          if (subText != null)
            Text(
              subText!,
              style: subTextStyle ?? 
                const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                ),
              textAlign: TextAlign.left, // 文本左对齐
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
        ],
      ),
    );
  }

  /// 构建底部按钮
  Widget _buildBottomButton() {
    return Container(
      width: buttonWidth ?? double.infinity, // 默认全宽
      height: buttonHeight ?? 32.0,
      padding: buttonPadding,
      child: ElevatedButton(
        onPressed: onButtonTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor ?? Colors.blue, // 使用传入的颜色参数
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadius ?? 16.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          elevation: 0,
          minimumSize: const Size(0, 32),
        ),
        child: Text(
          buttonText!,
          style: buttonTextStyle ?? 
            const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
        ),
      ),
    );
  }
}

/// 解锁卡片数据模型
class UnlockCardData {
  /// 左上角文本
  final String? topLeftText;
  
  /// 右上角图片
  final Widget? topRightImage;
  
  /// 中间主文本
  final String? mainText;
  
  /// 中间副文本
  final String? subText;
  
  /// 底部按钮文本
  final String? buttonText;
  
  const UnlockCardData({
    this.topLeftText,
    this.topRightImage,
    this.mainText,
    this.subText,
    this.buttonText,
  });
}

/// 解锁卡片样式配置
class UnlockCardStyle {
  /// 卡片样式
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;
  
  /// 左上角文本样式
  final TextStyle? topLeftTextStyle;
  final EdgeInsets? topLeftPadding;
  final Color? topLeftBackgroundColor;
  final double? topLeftBorderRadius;
  
  /// 右上角图片样式
  final double? topRightImageSize;
  final EdgeInsets? topRightPadding;
  final Color? topRightBackgroundColor;
  final double? topRightBorderRadius;
  
  /// 中间文本样式
  final TextStyle? mainTextStyle;
  final TextStyle? subTextStyle;
  final double? mainSubTextSpacing;
  final EdgeInsets? centerTextPadding;
  
  /// 底部按钮样式
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final Color? buttonBackgroundColor;
  final double? buttonBorderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final EdgeInsets? buttonPadding;
  
  const UnlockCardStyle({
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.boxShadow,
    this.topLeftTextStyle,
    this.topLeftPadding,
    this.topLeftBackgroundColor,
    this.topLeftBorderRadius,
    this.topRightImageSize,
    this.topRightPadding,
    this.topRightBackgroundColor,
    this.topRightBorderRadius,
    this.mainTextStyle,
    this.subTextStyle,
    this.mainSubTextSpacing,
    this.centerTextPadding,
    this.buttonStyle,
    this.buttonTextStyle,
    this.buttonBackgroundColor,
    this.buttonBorderRadius,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
  });
  
  /// 应用样式到组件
  UnlockCardWidget applyTo(UnlockCardWidget widget, UnlockCardData data) {
    return UnlockCardWidget(
      width: width ?? widget.width,
      height: height ?? widget.height,
      backgroundColor: backgroundColor ?? widget.backgroundColor,
      borderColor: borderColor ?? widget.borderColor,
      borderWidth: borderWidth ?? widget.borderWidth,
      borderRadius: borderRadius ?? widget.borderRadius,
      padding: padding ?? widget.padding,
      margin: margin ?? widget.margin,
      boxShadow: boxShadow ?? widget.boxShadow,
      topLeftText: data.topLeftText ?? widget.topLeftText,
      topLeftTextStyle: topLeftTextStyle ?? widget.topLeftTextStyle,
      topLeftPadding: topLeftPadding ?? widget.topLeftPadding,
      topLeftBackgroundColor: topLeftBackgroundColor ?? widget.topLeftBackgroundColor,
      topLeftBorderRadius: topLeftBorderRadius ?? widget.topLeftBorderRadius,
      topRightImage: data.topRightImage ?? widget.topRightImage,
      topRightImageSize: topRightImageSize ?? widget.topRightImageSize,
      topRightPadding: topRightPadding ?? widget.topRightPadding,
      topRightBackgroundColor: topRightBackgroundColor ?? widget.topRightBackgroundColor,
      topRightBorderRadius: topRightBorderRadius ?? widget.topRightBorderRadius,
      mainText: data.mainText ?? widget.mainText,
      mainTextStyle: mainTextStyle ?? widget.mainTextStyle,
      subText: data.subText ?? widget.subText,
      subTextStyle: subTextStyle ?? widget.subTextStyle,
      mainSubTextSpacing: mainSubTextSpacing ?? widget.mainSubTextSpacing,
      centerTextPadding: centerTextPadding ?? widget.centerTextPadding,
      buttonText: data.buttonText ?? widget.buttonText,
      buttonStyle: buttonStyle ?? widget.buttonStyle,
      buttonTextStyle: buttonTextStyle ?? widget.buttonTextStyle,
      buttonBackgroundColor: buttonBackgroundColor ?? widget.buttonBackgroundColor,
      buttonBorderRadius: buttonBorderRadius ?? widget.buttonBorderRadius,
      buttonHeight: buttonHeight ?? widget.buttonHeight,
      buttonWidth: buttonWidth ?? widget.buttonWidth,
      buttonPadding: buttonPadding ?? widget.buttonPadding,
      onButtonTap: widget.onButtonTap,
      onCardTap: widget.onCardTap,
    );
  }
}

/// 解锁卡片预设样式
class UnlockCardPresets {
  /// 默认样式
  static const UnlockCardStyle defaultStyle = UnlockCardStyle();
  
  /// 简约样式
  static const UnlockCardStyle minimalStyle = UnlockCardStyle(
    backgroundColor: Colors.white,
    borderRadius: 8.0,
    padding: EdgeInsets.all(20.0),
    topLeftBackgroundColor: Color(0xFF6A0DAD),
    topLeftTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    mainTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    subTextStyle: TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    buttonBackgroundColor: Color(0xFF6A0DAD),
    buttonBorderRadius: 6.0,
  );
  
  /// 深色样式
  static const UnlockCardStyle darkStyle = UnlockCardStyle(
    backgroundColor: Color(0xFF1A1A1A),
    borderColor: Color(0xFF333333),
    borderRadius: 12.0,
    padding: EdgeInsets.all(20.0),
    topLeftBackgroundColor: Color(0xFF6A0DAD),
    topLeftTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    mainTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    subTextStyle: TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    buttonBackgroundColor: Color(0xFF6A0DAD),
    buttonBorderRadius: 8.0,
  );
  
  /// 圆润样式
  static const UnlockCardStyle roundedStyle = UnlockCardStyle(
    backgroundColor: Colors.white,
    borderRadius: 20.0,
    padding: EdgeInsets.all(24.0),
    topLeftBackgroundColor: Color(0xFF6A0DAD),
    topLeftBorderRadius: 12.0,
    topLeftTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    mainTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    subTextStyle: TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    buttonBackgroundColor: Color(0xFF6A0DAD),
    buttonBorderRadius: 16.0,
  );
}
