import 'dart:ui';

import 'package:flutter/cupertino.dart';

/// 交易员简介编辑组件数据模型
class TraderIntroData {
  /// 标题文本
  final String title;
  
  /// 占位符文本
  final String placeholder;
  
  /// 当前输入的内容
  final String content;
  
  /// 最大字符数限制
  final int? maxLength;
  
  /// 是否启用编辑
  final bool enabled;
  
  /// 是否自动获取焦点
  final bool autofocus;
  
  /// 最大行数
  final int? maxLines;
  
  /// 最小行数
  final int? minLines;
  
  /// 是否自动调整高度
  final bool expands;
  
  const TraderIntroData({
    this.title = '交易员简介',
    this.placeholder = '请简单介绍您得交易策略和经验',
    this.content = '',
    this.maxLength,
    this.enabled = true,
    this.autofocus = false,
    this.maxLines,
    this.minLines,
    this.expands = false,
  });
  
  TraderIntroData copyWith({
    String? title,
    String? placeholder,
    String? content,
    int? maxLength,
    bool? enabled,
    bool? autofocus,
    int? maxLines,
    int? minLines,
    bool? expands,
  }) {
    return TraderIntroData(
      title: title ?? this.title,
      placeholder: placeholder ?? this.placeholder,
      content: content ?? this.content,
      maxLength: maxLength ?? this.maxLength,
      enabled: enabled ?? this.enabled,
      autofocus: autofocus ?? this.autofocus,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
    );
  }
}

/// 交易员简介编辑组件样式配置
class TraderIntroStyle {
  /// 标题文本样式
  final TextStyle? titleStyle;
  
  /// 输入框文本样式
  final TextStyle? inputStyle;
  
  /// 占位符文本样式
  final TextStyle? placeholderStyle;
  
  /// 输入框背景色
  final Color? backgroundColor;
  
  /// 输入框边框颜色
  final Color? borderColor;
  
  /// 输入框边框宽度
  final double? borderWidth;
  
  /// 输入框圆角半径
  final double? borderRadius;
  
  /// 内边距
  final EdgeInsets? padding;
  
  /// 外边距
  final EdgeInsets? margin;
  
  /// 输入框高度
  final double? height;
  
  /// 输入框最小高度
  final double? minHeight;
  
  /// 输入框最大高度
  final double? maxHeight;
  
  const TraderIntroStyle({
    this.titleStyle,
    this.inputStyle,
    this.placeholderStyle,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.margin,
    this.height,
    this.minHeight,
    this.maxHeight,
  });
  
  TraderIntroStyle copyWith({
    TextStyle? titleStyle,
    TextStyle? inputStyle,
    TextStyle? placeholderStyle,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double? height,
    double? minHeight,
    double? maxHeight,
  }) {
    return TraderIntroStyle(
      titleStyle: titleStyle ?? this.titleStyle,
      inputStyle: inputStyle ?? this.inputStyle,
      placeholderStyle: placeholderStyle ?? this.placeholderStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      height: height ?? this.height,
      minHeight: minHeight ?? this.minHeight,
      maxHeight: maxHeight ?? this.maxHeight,
    );
  }
}
