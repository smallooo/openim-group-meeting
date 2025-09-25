import 'package:flutter/material.dart';

/// 输入显示组件数据模型
class InputDisplayData {
  /// 输入框内容
  final String? inputValue;
  
  /// 输入框提示文本
  final String? inputHint;
  
  /// 文本框内容
  final String? textValue;
  
  /// 输入框文本样式
  final TextStyle? inputTextStyle;
  
  /// 输入框提示文本样式
  final TextStyle? inputHintStyle;
  
  /// 文本框文本样式
  final TextStyle? textStyle;
  
  /// 是否启用输入框
  final bool enabled;
  
  /// 是否只读
  final bool readOnly;
  
  /// 是否自动获取焦点
  final bool autofocus;
  
  /// 输入框最大长度
  final int? maxLength;
  
  /// 输入框键盘类型
  final TextInputType? keyboardType;
  
  /// 输入框文本对齐方式
  final TextAlign? textAlign;
  
  /// 文本框是否可点击
  final bool textAreaClickable;
  
  const InputDisplayData({
    this.inputValue,
    this.inputHint,
    this.textValue,
    this.inputTextStyle,
    this.inputHintStyle,
    this.textStyle,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.maxLength,
    this.keyboardType,
    this.textAlign,
    this.textAreaClickable = true,
  });
  
  /// 复制并修改数据
  InputDisplayData copyWith({
    String? inputValue,
    String? inputHint,
    String? textValue,
    TextStyle? inputTextStyle,
    TextStyle? inputHintStyle,
    TextStyle? textStyle,
    bool? enabled,
    bool? readOnly,
    bool? autofocus,
    int? maxLength,
    TextInputType? keyboardType,
    TextAlign? textAlign,
    bool? textAreaClickable,
  }) {
    return InputDisplayData(
      inputValue: inputValue ?? this.inputValue,
      inputHint: inputHint ?? this.inputHint,
      textValue: textValue ?? this.textValue,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      inputHintStyle: inputHintStyle ?? this.inputHintStyle,
      textStyle: textStyle ?? this.textStyle,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      autofocus: autofocus ?? this.autofocus,
      maxLength: maxLength ?? this.maxLength,
      keyboardType: keyboardType ?? this.keyboardType,
      textAlign: textAlign ?? this.textAlign,
      textAreaClickable: textAreaClickable ?? this.textAreaClickable,
    );
  }
  
  /// 从JSON创建数据
  factory InputDisplayData.fromJson(Map<String, dynamic> json) {
    return InputDisplayData(
      inputValue: json['inputValue'] as String?,
      inputHint: json['inputHint'] as String?,
      textValue: json['textValue'] as String?,
      enabled: json['enabled'] as bool? ?? true,
      readOnly: json['readOnly'] as bool? ?? false,
      autofocus: json['autofocus'] as bool? ?? false,
      maxLength: json['maxLength'] as int?,
      textAreaClickable: json['textAreaClickable'] as bool? ?? true,
    );
  }
  
  /// 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'inputValue': inputValue,
      'inputHint': inputHint,
      'textValue': textValue,
      'enabled': enabled,
      'readOnly': readOnly,
      'autofocus': autofocus,
      'maxLength': maxLength,
      'textAreaClickable': textAreaClickable,
    };
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InputDisplayData &&
        other.inputValue == inputValue &&
        other.inputHint == inputHint &&
        other.textValue == textValue &&
        other.enabled == enabled &&
        other.readOnly == readOnly &&
        other.autofocus == autofocus &&
        other.maxLength == maxLength &&
        other.keyboardType == keyboardType &&
        other.textAlign == textAlign &&
        other.textAreaClickable == textAreaClickable;
  }
  
  @override
  int get hashCode {
    return Object.hash(
      inputValue,
      inputHint,
      textValue,
      enabled,
      readOnly,
      autofocus,
      maxLength,
      keyboardType,
      textAlign,
      textAreaClickable,
    );
  }
  
  @override
  String toString() {
    return 'InputDisplayData('
        'inputValue: $inputValue, '
        'inputHint: $inputHint, '
        'textValue: $textValue, '
        'enabled: $enabled, '
        'readOnly: $readOnly, '
        'autofocus: $autofocus, '
        'maxLength: $maxLength, '
        'keyboardType: $keyboardType, '
        'textAlign: $textAlign, '
        'textAreaClickable: $textAreaClickable'
        ')';
  }
}

