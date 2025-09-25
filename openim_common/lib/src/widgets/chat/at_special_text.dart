import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// @人功能的特殊文本类
class AtText extends SpecialText {
  static const String flag = '@';
  final int start;
  final BuildContext? context;
  final TextStyle? atStyle;
  final Function(String)? onAtTap;

  AtText(
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap, {
    this.start = 0,
    required this.context,
    this.atStyle,
    this.onAtTap,
  }) : super(AtText.flag, ' ', textStyle, onTap: onTap);

  @override
  InlineSpan finishText() {
    final String atText = toString();
    
    return SpecialTextSpan(
      text: atText,
      actualText: atText,
      start: start,
      style: atStyle ?? TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          if (onAtTap != null) {
            // 提取@的用户名（去掉@符号和空格）
            final username = atText.replaceAll('@', '').trim();
            onAtTap!(username);
          }
        },
    );
  }
}

/// 处理@人输入的特殊文本类
class AtInputText extends SpecialText {
  static const String flag = '@';
  final int start;
  final BuildContext? context;
  final TextStyle? atStyle;
  final Function(String)? onAtInput;

  AtInputText(
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap, {
    this.start = 0,
    required this.context,
    this.atStyle,
    this.onAtInput,
  }) : super(AtInputText.flag, ' ', textStyle, onTap: onTap);

  @override
  bool isEnd(String value) {
    // 当输入@后遇到空格、换行或其他字符时结束
    return value == ' ' || value == '\n' || value.isNotEmpty;
  }

  @override
  InlineSpan finishText() {
    final String atText = toString();
    
    // 当用户输入@时立即触发选择用户界面
    if (atText == '@') {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onAtInput?.call('');
      });
    }
    
    return SpecialTextSpan(
      text: atText,
      actualText: atText,
      start: start,
      style: atStyle ?? TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
