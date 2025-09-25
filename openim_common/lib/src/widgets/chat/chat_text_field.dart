import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';
import 'at_text_span_builder.dart';

class ChatTextField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? hintText;

  final TextStyle? style;
  final TextStyle? atStyle;
  final bool enabled;
  final TextAlign textAlign;
  
  // @功能相关回调
  final Function(String)? onAt;
  final Function(String)? onTapAt;
  final Map<String, String>? atUserMap;

  const ChatTextField({
    Key? key,
    this.focusNode,
    this.controller,
    this.hintText,
    this.style,
    this.atStyle,
    this.enabled = true,
    this.textAlign = TextAlign.start,
    this.onAt,
    this.onTapAt,
    this.atUserMap,
  }) : super(key: key);

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  String _lastText = '';

  @override
  void initState() {
    super.initState();
    // 监听文本变化
    widget.controller?.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final currentText = widget.controller?.text ?? '';
    
    print('ChatTextField _onTextChanged: currentText="$currentText", _lastText="$_lastText"');
    
    // 检测是否刚输入了@符号
    if (currentText.length > _lastText.length && 
        currentText.endsWith('@') &&
        widget.onAt != null) {
      print('检测到@输入，触发回调');
      // 触发@功能
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onAt!('');
      });
    }
    
    _lastText = currentText;
  }

  @override
  Widget build(BuildContext context) {
    return ExtendedTextField(
      style: widget.style,
      focusNode: widget.focusNode,
      controller: widget.controller,
      keyboardType: TextInputType.multiline,
      enabled: widget.enabled,
      autofocus: false,
      minLines: 1,
      maxLines: 4,
      textAlign: widget.textAlign,
      // 添加@功能支持
      specialTextSpanBuilder: widget.enabled && widget.onAt != null
          ? AtTextSpanBuilder(
              context: context,
              atStyle: widget.atStyle,
              onAt: widget.onAt,
              onTapAt: widget.onTapAt,
            )
          : null,
      decoration: InputDecoration(
        border: InputBorder.none,
        isDense: true,
        hintText: widget.hintText,
        hintStyle: Styles.ts_8E9AB0_17sp,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 8.h,
        ),
      ),
    );
  }
}
