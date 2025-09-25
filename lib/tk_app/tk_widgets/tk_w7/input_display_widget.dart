import 'package:flutter/material.dart';
import '../tk_w11/input_display_data.dart';

/// 输入显示组件
/// 包含编辑框背景、编辑框区域和文本框三个部分
class InputDisplayWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: borderWidth ?? 1.0,
              )
            : null,
        boxShadow: boxShadow,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // 编辑框区域
            Expanded(
              flex: ((inputAreaWidthRatio ?? 0.7) * 100).round(),
              child: _buildInputArea(),
            ),
            // 间距
            SizedBox(width: inputTextSpacing ?? 8.0),
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
      height: inputAreaHeight ?? 40.0,
      margin: inputAreaMargin,
      decoration: BoxDecoration(
        color: inputAreaBackgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(inputAreaBorderRadius ?? 6.0),
        border: inputAreaBorderColor != null
            ? Border.all(
                color: inputAreaBorderColor!,
                width: inputAreaBorderWidth ?? 1.0,
              )
            : null,
      ),
      child: Padding(
        padding: inputAreaPadding ?? const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: TextField(
            controller: TextEditingController(text: inputValue),
            onChanged: onInputChanged,
            onTap: () => onFocusChanged?.call(true),
            onTapOutside: (_) => onFocusChanged?.call(false),
            autofocus: autofocus,
            maxLength: maxLength,
            keyboardType: keyboardType,
            textAlign: textAlign ?? TextAlign.center,
            enabled: enabled,
            readOnly: readOnly,
            style: inputTextStyle ?? 
              const TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            decoration: InputDecoration(
              hintText: inputHint,
              hintStyle: inputHintStyle ?? 
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
      width: textAreaWidth ?? 40.0,
      height: textAreaHeight ?? 40.0,
      margin: textAreaMargin,
      decoration: BoxDecoration(
        color: textAreaBackgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(textAreaBorderRadius ?? 6.0),
        border: textAreaBorderColor != null
            ? Border.all(
                color: textAreaBorderColor!,
                width: textAreaBorderWidth ?? 1.0,
              )
            : null,
      ),
      child: textAreaClickable
          ? Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTextAreaTap,
                borderRadius: BorderRadius.circular(textAreaBorderRadius ?? 6.0),
                child: Padding(
                  padding: textAreaPadding ?? const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      textValue ?? '',
                      style: textStyle ?? 
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
              padding: textAreaPadding ?? const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  textValue ?? '',
                  style: textStyle ?? 
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
  
  const InputDisplayData({
    this.inputValue,
    this.inputHint,
    this.textValue,
  });
}

/// 输入显示组件样式配置
class InputDisplayStyle {
  /// 组件样式
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;
  
  /// 编辑框区域样式
  final double? inputAreaWidthRatio;
  final double? inputAreaHeight;
  final Color? inputAreaBackgroundColor;
  final Color? inputAreaBorderColor;
  final double? inputAreaBorderWidth;
  final double? inputAreaBorderRadius;
  final EdgeInsets? inputAreaPadding;
  final EdgeInsets? inputAreaMargin;
  final double? inputTextSpacing;
  
  /// 文本框区域样式
  final double? textAreaWidth;
  final double? textAreaHeight;
  final Color? textAreaBackgroundColor;
  final Color? textAreaBorderColor;
  final double? textAreaBorderWidth;
  final double? textAreaBorderRadius;
  final EdgeInsets? textAreaPadding;
  final EdgeInsets? textAreaMargin;
  
  /// 文本样式
  final TextStyle? inputTextStyle;
  final TextStyle? inputHintStyle;
  final TextStyle? textStyle;
  
  const InputDisplayStyle({
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
    this.inputTextStyle,
    this.inputHintStyle,
    this.textStyle,
  });
  
  /// 应用样式到组件
  InputDisplayWidget applyTo(InputDisplayWidget widget, InputDisplayData data) {
    return InputDisplayWidget(
      width: width ?? widget.width,
      height: height ?? widget.height,
      backgroundColor: backgroundColor ?? widget.backgroundColor,
      borderColor: borderColor ?? widget.borderColor,
      borderWidth: borderWidth ?? widget.borderWidth,
      borderRadius: borderRadius ?? widget.borderRadius,
      padding: padding ?? widget.padding,
      margin: margin ?? widget.margin,
      boxShadow: boxShadow ?? widget.boxShadow,
      inputAreaWidthRatio: inputAreaWidthRatio ?? widget.inputAreaWidthRatio,
      inputAreaHeight: inputAreaHeight ?? widget.inputAreaHeight,
      inputAreaBackgroundColor: inputAreaBackgroundColor ?? widget.inputAreaBackgroundColor,
      inputAreaBorderColor: inputAreaBorderColor ?? widget.inputAreaBorderColor,
      inputAreaBorderWidth: inputAreaBorderWidth ?? widget.inputAreaBorderWidth,
      inputAreaBorderRadius: inputAreaBorderRadius ?? widget.inputAreaBorderRadius,
      inputAreaPadding: inputAreaPadding ?? widget.inputAreaPadding,
      inputAreaMargin: inputAreaMargin ?? widget.inputAreaMargin,
      inputTextSpacing: inputTextSpacing ?? widget.inputTextSpacing,
      textAreaWidth: textAreaWidth ?? widget.textAreaWidth,
      textAreaHeight: textAreaHeight ?? widget.textAreaHeight,
      textAreaBackgroundColor: textAreaBackgroundColor ?? widget.textAreaBackgroundColor,
      textAreaBorderColor: textAreaBorderColor ?? widget.textAreaBorderColor,
      textAreaBorderWidth: textAreaBorderWidth ?? widget.textAreaBorderWidth,
      textAreaBorderRadius: textAreaBorderRadius ?? widget.textAreaBorderRadius,
      textAreaPadding: textAreaPadding ?? widget.textAreaPadding,
      textAreaMargin: textAreaMargin ?? widget.textAreaMargin,
      inputValue: data.inputValue ?? widget.inputValue,
      inputHint: data.inputHint ?? widget.inputHint,
      inputTextStyle: inputTextStyle ?? widget.inputTextStyle,
      inputHintStyle: inputHintStyle ?? widget.inputHintStyle,
      textValue: data.textValue ?? widget.textValue,
      textStyle: textStyle ?? widget.textStyle,
      textAreaClickable: widget.textAreaClickable,
      onTextAreaTap: widget.onTextAreaTap,
      onInputChanged: widget.onInputChanged,
      onFocusChanged: widget.onFocusChanged,
      autofocus: widget.autofocus,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      textAlign: widget.textAlign,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
    );
  }
}

/// 输入显示组件预设样式
class InputDisplayPresets {
  /// 默认样式
  static const InputDisplayStyle defaultStyle = InputDisplayStyle();
  
  /// 简约样式
  static const InputDisplayStyle minimalStyle = InputDisplayStyle(
    backgroundColor: Colors.white,
    borderRadius: 6.0,
    padding: EdgeInsets.all(8.0),
    inputAreaWidthRatio: 0.7,
    inputAreaHeight: 36.0,
    inputAreaBorderRadius: 4.0,
    inputAreaPadding: EdgeInsets.symmetric(horizontal: 8.0),
    inputTextSpacing: 6.0,
    textAreaWidth: 36.0,
    textAreaHeight: 36.0,
    textAreaBorderRadius: 4.0,
    textAreaPadding: EdgeInsets.all(6.0),
    inputTextStyle: TextStyle(
      fontSize: 14.0,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
    textStyle: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
  
  /// 圆润样式
  static const InputDisplayStyle roundedStyle = InputDisplayStyle(
    backgroundColor: Colors.white,
    borderRadius: 12.0,
    padding: EdgeInsets.all(12.0),
    inputAreaWidthRatio: 0.75,
    inputAreaHeight: 44.0,
    inputAreaBorderRadius: 8.0,
    inputAreaPadding: EdgeInsets.symmetric(horizontal: 12.0),
    inputTextSpacing: 8.0,
    textAreaWidth: 44.0,
    textAreaHeight: 44.0,
    textAreaBorderRadius: 8.0,
    textAreaPadding: EdgeInsets.all(8.0),
    inputTextStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
    textStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
  
  /// 深色样式
  static const InputDisplayStyle darkStyle = InputDisplayStyle(
    backgroundColor: Color(0xFF1A1A1A),
    borderColor: Color(0xFF333333),
    borderRadius: 8.0,
    padding: EdgeInsets.all(12.0),
    inputAreaWidthRatio: 0.7,
    inputAreaHeight: 40.0,
    inputAreaBackgroundColor: Color(0xFF2A2A2A),
    inputAreaBorderColor: Color(0xFF444444),
    inputAreaBorderRadius: 6.0,
    inputAreaPadding: EdgeInsets.symmetric(horizontal: 10.0),
    inputTextSpacing: 8.0,
    textAreaWidth: 40.0,
    textAreaHeight: 40.0,
    textAreaBackgroundColor: Color(0xFF2A2A2A),
    textAreaBorderColor: Color(0xFF444444),
    textAreaBorderRadius: 6.0,
    textAreaPadding: EdgeInsets.all(8.0),
    inputTextStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    inputHintStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
      fontWeight: FontWeight.normal,
    ),
    textStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
  
  /// 边框样式
  static const InputDisplayStyle borderedStyle = InputDisplayStyle(
    backgroundColor: Colors.white,
    borderColor: Color(0xFFE0E0E0),
    borderWidth: 1.0,
    borderRadius: 8.0,
    padding: EdgeInsets.all(12.0),
    inputAreaWidthRatio: 0.7,
    inputAreaHeight: 40.0,
    inputAreaBorderColor: Color(0xFFD0D0D0),
    inputAreaBorderWidth: 1.0,
    inputAreaBorderRadius: 6.0,
    inputAreaPadding: EdgeInsets.symmetric(horizontal: 10.0),
    inputTextSpacing: 8.0,
    textAreaWidth: 40.0,
    textAreaHeight: 40.0,
    textAreaBorderColor: Color(0xFFD0D0D0),
    textAreaBorderWidth: 1.0,
    textAreaBorderRadius: 6.0,
    textAreaPadding: EdgeInsets.all(8.0),
    inputTextStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
    textStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}
