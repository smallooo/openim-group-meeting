import 'package:flutter/material.dart';
import 'input_display_data.dart';

/// 输入显示组件
/// 包含编辑框背景、编辑框区域和文本框三个部分
class InputDisplayWidget extends StatefulWidget {
  /// 组件宽度
  final double? width;
  
  /// 组件高度
  final double? height;
  
  /// 编辑框背景颜色
  final Color? backgroundColor;
  
  /// 编辑框边框颜色
  final Color? borderColor;
  
  /// 编辑框边框宽度
  final double? borderWidth;
  
  /// 编辑框圆角半径
  final double? borderRadius;
  
  /// 编辑框内边距
  final EdgeInsets? padding;
  
  /// 编辑框外边距
  final EdgeInsets? margin;
  
  /// 编辑框阴影
  final List<BoxShadow>? boxShadow;
  
  // 编辑框区域相关属性
  /// 编辑框区域宽度比例 (0.0-1.0)
  final double? inputAreaWidthRatio;
  
  /// 编辑框区域高度
  final double? inputAreaHeight;
  
  /// 编辑框区域背景颜色
  final Color? inputAreaBackgroundColor;
  
  /// 编辑框区域边框颜色
  final Color? inputAreaBorderColor;
  
  /// 编辑框区域边框宽度
  final double? inputAreaBorderWidth;
  
  /// 编辑框区域圆角半径
  final double? inputAreaBorderRadius;
  
  /// 编辑框区域内边距
  final EdgeInsets? inputAreaPadding;
  
  /// 编辑框区域外边距
  final EdgeInsets? inputAreaMargin;
  
  /// 编辑框区域与文本框间距
  final double? inputTextSpacing;
  
  // 文本框相关属性
  /// 文本框宽度
  final double? textAreaWidth;
  
  /// 文本框高度
  final double? textAreaHeight;
  
  /// 文本框背景颜色
  final Color? textAreaBackgroundColor;
  
  /// 文本框边框颜色
  final Color? textAreaBorderColor;
  
  /// 文本框边框宽度
  final double? textAreaBorderWidth;
  
  /// 文本框圆角半径
  final double? textAreaBorderRadius;
  
  /// 文本框内边距
  final EdgeInsets? textAreaPadding;
  
  /// 文本框外边距
  final EdgeInsets? textAreaMargin;
  
  // 内容相关属性
  /// 输入框内容
  final String? inputValue;
  
  /// 输入框提示文本
  final String? inputHint;
  
  /// 输入框文本样式
  final TextStyle? inputTextStyle;
  
  /// 输入框提示文本样式
  final TextStyle? inputHintStyle;
  
  /// 文本框内容
  final String? textValue;
  
  /// 文本框文本样式
  final TextStyle? textStyle;
  
  /// 文本框是否可点击
  final bool textAreaClickable;
  
  /// 文本框点击回调
  final VoidCallback? onTextAreaTap;
  
  /// 输入框内容变化回调
  final ValueChanged<String>? onInputChanged;
  
  /// 输入框焦点变化回调
  final ValueChanged<bool>? onFocusChanged;
  
  /// 是否自动获取焦点
  final bool autofocus;
  
  /// 输入框最大长度
  final int? maxLength;
  
  /// 输入框键盘类型
  final TextInputType? keyboardType;
  
  /// 输入框文本对齐方式
  final TextAlign? textAlign;
  
  /// 是否启用输入框
  final bool enabled;
  
  /// 是否只读
  final bool readOnly;
  
  const InputDisplayWidget({
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
    this.inputAreaWidthRatio,
    this.inputAreaHeight,
    this.inputAreaBackgroundColor,
    this.inputAreaBorderColor,
    this.inputAreaBorderWidth,
    this.inputAreaBorderRadius,
    this.inputAreaPadding,
    this.inputAreaMargin,
    this.inputTextSpacing,
    this.textAreaWidth,
    this.textAreaHeight,
    this.textAreaBackgroundColor,
    this.textAreaBorderColor,
    this.textAreaBorderWidth,
    this.textAreaBorderRadius,
    this.textAreaPadding,
    this.textAreaMargin,
    this.inputValue,
    this.inputHint,
    this.inputTextStyle,
    this.inputHintStyle,
    this.textValue,
    this.textStyle,
    this.textAreaClickable = true,
    this.onTextAreaTap,
    this.onInputChanged,
    this.onFocusChanged,
    this.autofocus = false,
    this.maxLength,
    this.keyboardType,
    this.textAlign,
    this.enabled = true,
    this.readOnly = false,
  });

  @override
  State<InputDisplayWidget> createState() => _InputDisplayWidgetState();
}

class _InputDisplayWidgetState extends State<InputDisplayWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.inputValue);
  }

  @override
  void didUpdateWidget(InputDisplayWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.inputValue != widget.inputValue) {
      _controller.text = widget.inputValue ?? '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
        border: widget.borderColor != null
            ? Border.all(
                color: widget.borderColor!,
                width: widget.borderWidth ?? 1.0,
              )
            : null,
        boxShadow: widget.boxShadow,
      ),
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // 编辑框区域
            Expanded(
              flex: ((widget.inputAreaWidthRatio ?? 0.7) * 100).round(),
              child: _buildInputArea(),
            ),
            // 间距
            SizedBox(width: widget.inputTextSpacing ?? 8.0),
            // 文本框区域
            _buildTextArea(),
          ],
        ),
      ),
    );
  }

  /// 构建编辑框区域
  Widget _buildInputArea() {
    return Container(
      height: widget.inputAreaHeight ?? 40.0,
      margin: widget.inputAreaMargin,
      decoration: BoxDecoration(
        color: widget.inputAreaBackgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(widget.inputAreaBorderRadius ?? 6.0),
        border: widget.inputAreaBorderColor != null
            ? Border.all(
                color: widget.inputAreaBorderColor!,
                width: widget.inputAreaBorderWidth ?? 1.0,
              )
            : null,
      ),
      child: Padding(
        padding: widget.inputAreaPadding ?? const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: TextField(
            controller: _controller,
            onChanged: (value) {
              widget.onInputChanged?.call(value);
            },
            onTap: () => widget.onFocusChanged?.call(true),
            onTapOutside: (_) => widget.onFocusChanged?.call(false),
            autofocus: widget.autofocus,
            maxLength: widget.maxLength,
            keyboardType: widget.keyboardType,
            textAlign: widget.textAlign ?? TextAlign.left,
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            style: widget.inputTextStyle ?? 
              const TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: widget.inputHintStyle ?? 
                const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              border: InputBorder.none,
              counterText: '', // 隐藏字符计数
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
      ),
    );
  }

  /// 构建文本框区域
  Widget _buildTextArea() {
    return Container(
      width: widget.textAreaWidth ?? 40.0,
      height: widget.textAreaHeight ?? 40.0,
      margin: widget.textAreaMargin,
      decoration: BoxDecoration(
        color: widget.textAreaBackgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(widget.textAreaBorderRadius ?? 6.0),
        border: widget.textAreaBorderColor != null
            ? Border.all(
                color: widget.textAreaBorderColor!,
                width: widget.textAreaBorderWidth ?? 1.0,
              )
            : null,
      ),
      child: widget.textAreaClickable
          ? Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onTextAreaTap,
                borderRadius: BorderRadius.circular(widget.textAreaBorderRadius ?? 6.0),
                child: Padding(
                  padding: widget.textAreaPadding ?? const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.textValue ?? '',
                      style: widget.textStyle ?? 
                        const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                ),
              ),
            )
          : Padding(
              padding: widget.textAreaPadding ?? const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  widget.textValue ?? '',
                  style: widget.textStyle ?? 
                    const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ),
    );
  }
}

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


/// 输入显示组件预设样式
class InputDisplayPresets {
  /// 简约样式
  static InputDisplayWidget minimalStyle({
    String? inputValue,
    String? inputHint,
    String? textValue,
    VoidCallback? onTextAreaTap,
    ValueChanged<String>? onInputChanged,
    ValueChanged<bool>? onFocusChanged,
  }) {
    return InputDisplayWidget(
      backgroundColor: Colors.white,
      borderRadius: 6.0,
      padding: const EdgeInsets.all(8.0),
      inputAreaWidthRatio: 0.7,
      inputAreaHeight: 36.0,
      inputAreaBorderRadius: 4.0,
      inputAreaPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      inputTextSpacing: 6.0,
      textAreaWidth: 36.0,
      textAreaHeight: 36.0,
      textAreaBorderRadius: 4.0,
      textAreaPadding: const EdgeInsets.all(6.0),
      inputValue: inputValue,
      inputHint: inputHint,
      inputTextStyle: const TextStyle(
        fontSize: 14.0,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      textValue: textValue,
      textStyle: const TextStyle(
        fontSize: 14.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      onTextAreaTap: onTextAreaTap,
      onInputChanged: onInputChanged,
      onFocusChanged: onFocusChanged,
      textAlign: TextAlign.left,
    );
  }
  
  /// 圆润样式
  static InputDisplayWidget roundedStyle({
    String? inputValue,
    String? inputHint,
    String? textValue,
    VoidCallback? onTextAreaTap,
    ValueChanged<String>? onInputChanged,
    ValueChanged<bool>? onFocusChanged,
  }) {
    return InputDisplayWidget(
      backgroundColor: Colors.white,
      borderRadius: 12.0,
      padding: const EdgeInsets.all(12.0),
      inputAreaWidthRatio: 0.75,
      inputAreaHeight: 44.0,
      inputAreaBorderRadius: 8.0,
      inputAreaPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      inputTextSpacing: 8.0,
      textAreaWidth: 44.0,
      textAreaHeight: 44.0,
      textAreaBorderRadius: 8.0,
      textAreaPadding: const EdgeInsets.all(8.0),
      inputValue: inputValue,
      inputHint: inputHint,
      inputTextStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      textValue: textValue,
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      onTextAreaTap: onTextAreaTap,
      onInputChanged: onInputChanged,
      onFocusChanged: onFocusChanged,
      textAlign: TextAlign.left,
    );
  }
  
  /// 深色样式
  static InputDisplayWidget darkStyle({
    String? inputValue,
    String? inputHint,
    String? textValue,
    VoidCallback? onTextAreaTap,
    ValueChanged<String>? onInputChanged,
    ValueChanged<bool>? onFocusChanged,
  }) {
    return InputDisplayWidget(
      backgroundColor: const Color(0xFF1A1A1A),
      borderColor: const Color(0xFF333333),
      borderRadius: 8.0,
      padding: const EdgeInsets.all(12.0),
      inputAreaWidthRatio: 0.7,
      inputAreaHeight: 40.0,
      inputAreaBackgroundColor: const Color(0xFF2A2A2A),
      inputAreaBorderColor: const Color(0xFF444444),
      inputAreaBorderRadius: 6.0,
      inputAreaPadding: const EdgeInsets.symmetric(horizontal: 10.0),
      inputTextSpacing: 8.0,
      textAreaWidth: 40.0,
      textAreaHeight: 40.0,
      textAreaBackgroundColor: const Color(0xFF2A2A2A),
      textAreaBorderColor: const Color(0xFF444444),
      textAreaBorderRadius: 6.0,
      textAreaPadding: const EdgeInsets.all(8.0),
      inputValue: inputValue,
      inputHint: inputHint,
      inputTextStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      inputHintStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      textValue: textValue,
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      onTextAreaTap: onTextAreaTap,
      onInputChanged: onInputChanged,
      onFocusChanged: onFocusChanged,
      textAlign: TextAlign.left,
    );
  }
  
  /// 边框样式
  static InputDisplayWidget borderedStyle({
    String? inputValue,
    String? inputHint,
    String? textValue,
    VoidCallback? onTextAreaTap,
    ValueChanged<String>? onInputChanged,
    ValueChanged<bool>? onFocusChanged,
  }) {
    return InputDisplayWidget(
      backgroundColor: Colors.white,
      borderColor: const Color(0xFFE0E0E0),
      borderWidth: 1.0,
      borderRadius: 8.0,
      padding: const EdgeInsets.all(12.0),
      inputAreaWidthRatio: 0.7,
      inputAreaHeight: 40.0,
      inputAreaBorderColor: const Color(0xFFD0D0D0),
      inputAreaBorderWidth: 1.0,
      inputAreaBorderRadius: 6.0,
      inputAreaPadding: const EdgeInsets.symmetric(horizontal: 10.0),
      inputTextSpacing: 8.0,
      textAreaWidth: 40.0,
      textAreaHeight: 40.0,
      textAreaBorderColor: const Color(0xFFD0D0D0),
      textAreaBorderWidth: 1.0,
      textAreaBorderRadius: 6.0,
      textAreaPadding: const EdgeInsets.all(8.0),
      inputValue: inputValue,
      inputHint: inputHint,
      inputTextStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      textValue: textValue,
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      onTextAreaTap: onTextAreaTap,
      onInputChanged: onInputChanged,
      onFocusChanged: onFocusChanged,
      textAlign: TextAlign.left,
    );
  }
}
