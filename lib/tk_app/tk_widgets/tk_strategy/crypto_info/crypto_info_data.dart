import 'package:flutter/material.dart';

/// 加密货币信息卡片数据模型
/// 包含6个框的数据：第一排（交易对、时间），第二排（价格、眼睛图标），第三排（级别、状态）
class CryptoInfoData {
  /// 第一排左边 - 交易对文本（如：BTCUSDT）
  final String tradingPair;
  
  /// 第一排右边 - 时间文本（如：09/11 15:00）
  final String timeText;
  
  /// 第二排左边 - 价格文本（如：$114253.2）
  final String priceText;
  
  /// 第二排右边 - 眼睛图标
  final Widget? eyeIcon;
  
  /// 第三排左边 - 级别文本（如：30M级别）
  final String levelText;
  
  /// 第三排右边 - 状态文本（如：观望）
  final String statusText;

  const CryptoInfoData({
    required this.tradingPair,
    required this.timeText,
    required this.priceText,
    this.eyeIcon,
    required this.levelText,
    required this.statusText,
  });

  /// 创建默认数据
  static const CryptoInfoData defaultData = CryptoInfoData(
    tradingPair: 'BTCUSDT',
    timeText: '09/11 15:00',
    priceText: '\$114253.2',
    levelText: '30M级别',
    statusText: '观望',
  );

  /// 复制并修改数据
  CryptoInfoData copyWith({
    String? tradingPair,
    String? timeText,
    String? priceText,
    Widget? eyeIcon,
    String? levelText,
    String? statusText,
  }) {
    return CryptoInfoData(
      tradingPair: tradingPair ?? this.tradingPair,
      timeText: timeText ?? this.timeText,
      priceText: priceText ?? this.priceText,
      eyeIcon: eyeIcon ?? this.eyeIcon,
      levelText: levelText ?? this.levelText,
      statusText: statusText ?? this.statusText,
    );
  }
}

/// 加密货币信息卡片样式配置
class CryptoInfoStyle {
  /// 卡片整体样式
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;

  /// 交易对框样式
  final Color? tradingPairBackgroundColor;
  final double? tradingPairBorderRadius;
  final EdgeInsets? tradingPairPadding;
  final TextStyle? tradingPairTextStyle;

  /// 时间框样式
  final Color? timeBackgroundColor;
  final double? timeBorderRadius;
  final EdgeInsets? timePadding;
  final TextStyle? timeTextStyle;

  /// 价格框样式
  final Color? priceBackgroundColor;
  final double? priceBorderRadius;
  final EdgeInsets? pricePadding;
  final TextStyle? priceTextStyle;

  /// 眼睛图标框样式
  final Color? eyeBackgroundColor;
  final double? eyeBorderRadius;
  final EdgeInsets? eyePadding;
  final double? eyeIconSize;

  /// 级别框样式
  final Color? levelBackgroundColor;
  final double? levelBorderRadius;
  final EdgeInsets? levelPadding;
  final TextStyle? levelTextStyle;

  /// 状态框样式
  final Color? statusBackgroundColor;
  final double? statusBorderRadius;
  final EdgeInsets? statusPadding;
  final TextStyle? statusTextStyle;

  /// 框之间的间距
  final double? horizontalSpacing;
  final double? verticalSpacing;

  const CryptoInfoStyle({
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.boxShadow,
    this.tradingPairBackgroundColor,
    this.tradingPairBorderRadius,
    this.tradingPairPadding,
    this.tradingPairTextStyle,
    this.timeBackgroundColor,
    this.timeBorderRadius,
    this.timePadding,
    this.timeTextStyle,
    this.priceBackgroundColor,
    this.priceBorderRadius,
    this.pricePadding,
    this.priceTextStyle,
    this.eyeBackgroundColor,
    this.eyeBorderRadius,
    this.eyePadding,
    this.eyeIconSize,
    this.levelBackgroundColor,
    this.levelBorderRadius,
    this.levelPadding,
    this.levelTextStyle,
    this.statusBackgroundColor,
    this.statusBorderRadius,
    this.statusPadding,
    this.statusTextStyle,
    this.horizontalSpacing,
    this.verticalSpacing,
  });

  /// 创建默认样式
  factory CryptoInfoStyle.defaultStyle() {
    return const CryptoInfoStyle(
      width: 200.0,
      height: 120.0,
      backgroundColor: Colors.white,
      borderRadius: 12.0,
      padding: EdgeInsets.all(12.0),
      tradingPairBackgroundColor: Color(0xFF6A0DAD),
      tradingPairBorderRadius: 8.0,
      tradingPairPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      tradingPairTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      timeBackgroundColor: Colors.white,
      timeBorderRadius: 6.0,
      timePadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      timeTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
      priceBackgroundColor: Colors.white,
      priceBorderRadius: 6.0,
      pricePadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      priceTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      eyeBackgroundColor: Colors.white,
      eyeBorderRadius: 6.0,
      eyePadding: EdgeInsets.all(4.0),
      eyeIconSize: 16.0,
      levelBackgroundColor: Colors.white,
      levelBorderRadius: 6.0,
      levelPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      levelTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
      statusBackgroundColor: Colors.white,
      statusBorderRadius: 6.0,
      statusPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      statusTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
      horizontalSpacing: 8.0,
      verticalSpacing: 8.0,
    );
  }

  /// 复制并修改样式
  CryptoInfoStyle copyWith({
    double? width,
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
    EdgeInsets? margin,
    List<BoxShadow>? boxShadow,
    Color? tradingPairBackgroundColor,
    double? tradingPairBorderRadius,
    EdgeInsets? tradingPairPadding,
    TextStyle? tradingPairTextStyle,
    Color? timeBackgroundColor,
    double? timeBorderRadius,
    EdgeInsets? timePadding,
    TextStyle? timeTextStyle,
    Color? priceBackgroundColor,
    double? priceBorderRadius,
    EdgeInsets? pricePadding,
    TextStyle? priceTextStyle,
    Color? eyeBackgroundColor,
    double? eyeBorderRadius,
    EdgeInsets? eyePadding,
    double? eyeIconSize,
    Color? levelBackgroundColor,
    double? levelBorderRadius,
    EdgeInsets? levelPadding,
    TextStyle? levelTextStyle,
    Color? statusBackgroundColor,
    double? statusBorderRadius,
    EdgeInsets? statusPadding,
    TextStyle? statusTextStyle,
    double? horizontalSpacing,
    double? verticalSpacing,
  }) {
    return CryptoInfoStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      boxShadow: boxShadow ?? this.boxShadow,
      tradingPairBackgroundColor: tradingPairBackgroundColor ?? this.tradingPairBackgroundColor,
      tradingPairBorderRadius: tradingPairBorderRadius ?? this.tradingPairBorderRadius,
      tradingPairPadding: tradingPairPadding ?? this.tradingPairPadding,
      tradingPairTextStyle: tradingPairTextStyle ?? this.tradingPairTextStyle,
      timeBackgroundColor: timeBackgroundColor ?? this.timeBackgroundColor,
      timeBorderRadius: timeBorderRadius ?? this.timeBorderRadius,
      timePadding: timePadding ?? this.timePadding,
      timeTextStyle: timeTextStyle ?? this.timeTextStyle,
      priceBackgroundColor: priceBackgroundColor ?? this.priceBackgroundColor,
      priceBorderRadius: priceBorderRadius ?? this.priceBorderRadius,
      pricePadding: pricePadding ?? this.pricePadding,
      priceTextStyle: priceTextStyle ?? this.priceTextStyle,
      eyeBackgroundColor: eyeBackgroundColor ?? this.eyeBackgroundColor,
      eyeBorderRadius: eyeBorderRadius ?? this.eyeBorderRadius,
      eyePadding: eyePadding ?? this.eyePadding,
      eyeIconSize: eyeIconSize ?? this.eyeIconSize,
      levelBackgroundColor: levelBackgroundColor ?? this.levelBackgroundColor,
      levelBorderRadius: levelBorderRadius ?? this.levelBorderRadius,
      levelPadding: levelPadding ?? this.levelPadding,
      levelTextStyle: levelTextStyle ?? this.levelTextStyle,
      statusBackgroundColor: statusBackgroundColor ?? this.statusBackgroundColor,
      statusBorderRadius: statusBorderRadius ?? this.statusBorderRadius,
      statusPadding: statusPadding ?? this.statusPadding,
      statusTextStyle: statusTextStyle ?? this.statusTextStyle,
      horizontalSpacing: horizontalSpacing ?? this.horizontalSpacing,
      verticalSpacing: verticalSpacing ?? this.verticalSpacing,
    );
  }
}
