import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'at_special_text.dart';

/// @功能的文本构建器
class AtTextSpanBuilder extends SpecialTextSpanBuilder {
  final BuildContext? context;
  final TextStyle? atStyle;
  final Function(String)? onAt;
  final Function(String)? onTapAt;

  AtTextSpanBuilder({
    this.context,
    this.atStyle,
    this.onAt,
    this.onTapAt,
  });

  @override
  SpecialText? createSpecialText(
    String flag, {
    required int index,
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap,
  }) {
    if (flag.isEmpty) return null;

    if (isStart(flag, AtText.flag)) {
      // 在显示模式下，处理已完成的@文本
      return AtText(
        textStyle,
        onTap,
        context: context,
        atStyle: atStyle,
        onAtTap: onTapAt,
        start: index,
      );
    }

    if (isStart(flag, AtInputText.flag)) {
      // 在输入模式下，处理正在输入的@文本
      return AtInputText(
        textStyle,
        onTap,
        context: context,
        atStyle: atStyle,
        onAtInput: onAt,
        start: index,
      );
    }

    return null;
  }

  /// 检查是否是@文本的开始
  bool isStart(String flag, String startFlag) {
    return flag == startFlag;
  }
}

/// 专门用于显示消息中@文本的构建器
class AtDisplayTextSpanBuilder extends SpecialTextSpanBuilder {
  final BuildContext? context;
  final TextStyle? atStyle;
  final Function(String)? onTapAt;
  final Map<String, String>? atUserMap; // userID -> nickname 的映射

  AtDisplayTextSpanBuilder({
    this.context,
    this.atStyle,
    this.onTapAt,
    this.atUserMap,
  });

  @override
  SpecialText? createSpecialText(
    String flag, {
    required int index,
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap,
  }) {
    if (flag.isEmpty) return null;

    if (isStart(flag, AtText.flag)) {
      return AtText(
        textStyle,
        onTap,
        context: context,
        atStyle: atStyle,
        onAtTap: onTapAt,
        start: index,
      );
    }

    return null;
  }

  bool isStart(String flag, String startFlag) {
    return flag == startFlag;
  }

  @override
  TextSpan build(
    String data, {
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap,
  }) {
    // 解析消息中的@信息
    return super.build(
      _parseAtInMessage(data),
      textStyle: textStyle,
      onTap: onTap,
    );
  }

  /// 解析消息中的@信息，将userID转换为显示名称
  String _parseAtInMessage(String text) {
    if (atUserMap == null || atUserMap!.isEmpty) return text;
    
    String result = text;
    
    // 匹配 @userID 格式
    final atRegex = RegExp(r'@([^\s]+)');
    final matches = atRegex.allMatches(text);
    
    for (final match in matches) {
      final userID = match.group(1);
      if (userID != null && atUserMap!.containsKey(userID)) {
        final nickname = atUserMap![userID]!;
        result = result.replaceAll('@$userID', '@$nickname ');
      }
    }
    
    return result;
  }
}
