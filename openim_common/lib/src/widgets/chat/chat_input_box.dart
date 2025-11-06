import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

double kInputBoxMinHeight = 56.h;


class ChatInputController {
  _ChatInputBoxState? _state;

  void _attach(_ChatInputBoxState state) => _state = state;
  void _detach(_ChatInputBoxState state) {
    if (_state == state) _state = null;
  }

  // 外部调用的方法：触发 ChatInputBox 的语音输入处理
  void triggerVoiceInput() {
    _state?._handleVoiceInput();
  }
}


class ChatInputBox extends StatefulWidget {
  const ChatInputBox({
    Key? key,
    required this.toolbox,
    required this.voiceRecordBar,
    required this.emojiView,
    this.controller,
    this.voiceInputController,
    this.focusNode,
    this.style,
    this.atStyle,
    this.enabled = true,
    this.isNotInGroup = false,
    this.hintText,
    this.forceCloseToolboxSub,
    this.quoteMessage,
    this.onClearQuote,
    this.onSend,
    this.directionalText,
    this.onCloseDirectional,
    this.onAt,
    this.onTapAt,
    this.atUserMap,
    this.onTapVoiceInput,
  }) : super(key: key);
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final ChatInputController? voiceInputController;
  final TextStyle? style;
  final TextStyle? atStyle;
  final bool enabled;
  final bool isNotInGroup;
  final String? hintText;
  final Widget toolbox;
  final Widget emojiView;
  final Widget voiceRecordBar;
  final Stream? forceCloseToolboxSub;
  final Message? quoteMessage;
  final Function()? onClearQuote;
  final ValueChanged<String>? onSend;
  final TextSpan? directionalText;
  final VoidCallback? onCloseDirectional;
  final Function(String)? onTapVoiceInput;
  
  // @功能相关回调
  final Function(String)? onAt;
  final Function(String)? onTapAt;
  final Map<String, String>? atUserMap;

  @override
  State<ChatInputBox> createState() => _ChatInputBoxState();
}

class _ChatInputBoxState extends State<ChatInputBox> /*with TickerProviderStateMixin */ {
  bool _toolsVisible = false;
  bool _emojiVisible = false;
  bool _leftKeyboardButton = false;
  bool _rightKeyboardButton = false;
  bool _sendButtonVisible = false;

  bool get _showQuoteView => IMUtils.isNotNullEmptyStr(widget.quoteMessage?.textElem?.content);

  double get _opacity => (widget.enabled ? 1 : .4);

  bool get _showDirectionalView => widget.directionalText != null;

  final TextEditingController _textCtrl = TextEditingController();

  @override
  void initState() {
    widget.focusNode?.addListener(() {
      if (widget.focusNode!.hasFocus) {
        setState(() {
          _toolsVisible = false;
          _leftKeyboardButton = false;
        });
      }
    });

    widget.forceCloseToolboxSub?.listen((value) {
      if (!mounted) return;
      setState(() {
        _toolsVisible = false;
      });
    });

    widget.controller?.addListener(() {
      setState(() {
        _sendButtonVisible = widget.controller!.text.isNotEmpty;
      });
    });

    super.initState();
    widget.voiceInputController?._attach(this);
  }

  @override
  void dispose() {
     widget.voiceInputController?._detach(this);
    _textCtrl.dispose();
    super.dispose();
  }

    // ChatInputBox 内部实际要执行的方法
  void _handleVoiceInput() {
   onTapSpeak();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) widget.controller?.clear();
    return widget.isNotInGroup
        ? const ChatDisableInputBox()
        : Column(
            children: [
              Container(
                constraints: BoxConstraints(minHeight: kInputBoxMinHeight),
                color: Styles.c_F0F2F6,
                child: Row(
                  children: [
                    12.horizontalSpace,
                    (_leftKeyboardButton
                        ? (ImageRes.openKeyboard.toImage..onTap = onTapLeftKeyboard)
                        : (ImageRes.openVoice.toImage..onTap = onTapSpeak))
                      ..width = 24.w
                      ..height = 24.h
                      ..opacity = _opacity,
                    8.horizontalSpace,
                    Expanded(
                      child: Stack(
                        children: [
                          Offstage(
                            offstage: _leftKeyboardButton,
                            child: _textFiled,
                          ),
                          Offstage(
                            offstage: !_leftKeyboardButton,
                            child: widget.voiceRecordBar,
                          ),
                        ],
                      ),
                    ),
                    8.horizontalSpace,
                    (_rightKeyboardButton
                        ? (ImageRes.openKeyboard.toImage..onTap = onTapRightKeyboard)
                        : (ImageRes.openEmoji.toImage..onTap = onTapEmoji))
                      ..width = 24.w
                      ..height = 24.h
                      ..opacity = _opacity,
                    8.horizontalSpace,
                    (_sendButtonVisible ? ImageRes.sendMessage : ImageRes.openToolbox).toImage
                      ..width = 22.w
                      ..height = 22.h
                      ..opacity = _opacity
                      ..onTap = _sendButtonVisible ? send : toggleToolbox,
                    12.horizontalSpace,
                  ],
                ),
              ),

              // 新增：显示引用内容（在输入条下方）
              if (_showQuoteView)
                _QuoteView(
                  title: '${widget.quoteMessage?.senderNickname ?? ''} : ',
                  content: widget.quoteMessage?.textElem?.content,
                  onClose: widget.onClearQuote,
                ),
                
              if (_showDirectionalView)
                _SubView(
                  textSpan: widget.directionalText,
                  onClose: () {
                    widget.onCloseDirectional?.call();
                  },
                ),
              Visibility(
                visible: _toolsVisible,
                child: FadeInUp(
                  duration: const Duration(milliseconds: 200),
                  child: widget.toolbox,
                ),
              ),
              Visibility(
                visible: _emojiVisible,
                child: FadeInUp(
                  duration: const Duration(milliseconds: 200),
                  child: widget.emojiView,
                ),
              ),
            ],
          );
  }

  Widget get _textFiled => Container(
        margin: EdgeInsets.only(top: 10.h, bottom: _showQuoteView ? 4.h : 10.h),
        decoration: BoxDecoration(
          color: Styles.c_FFFFFF,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: ChatTextField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: widget.style ?? Styles.ts_0C1C33_17sp,
          atStyle: widget.atStyle ?? Styles.ts_0089FF_17sp,
          enabled: widget.enabled,
          hintText: widget.hintText,
          textAlign: widget.enabled ? TextAlign.start : TextAlign.center,
          onAt: widget.onAt,
          onTapAt: widget.onTapAt,
          atUserMap: widget.atUserMap,
        ),
      );

  void send() {
    if (!widget.enabled) return;
    if (!_emojiVisible) focus();
    if (null != widget.onSend && null != widget.controller) {
      widget.onSend!(widget.controller!.text.toString().trim());
    }
  }

  void toggleToolbox() {
    if (!widget.enabled) return;
    setState(() {
      _toolsVisible = !_toolsVisible;
      _emojiVisible = false;
      _rightKeyboardButton = false;
      _leftKeyboardButton = false;
      if (_toolsVisible) {
        unfocus();
      } else {
        focus();
      }
    });
  }

  void onTapLeftKeyboard() {
    if (!widget.enabled) return;
    setState(() {
      _leftKeyboardButton = false;
      _toolsVisible = false;
      _emojiVisible = false;
      focus();
    });
  }

  void onTapRightKeyboard() {
    if (!widget.enabled) return;
    setState(() {
      _toolsVisible = false;
      _rightKeyboardButton = false;
      _emojiVisible = false;
      focus();
    });
  }

   void onTapSpeak() {
    if (!widget.enabled) return;
    Permissions.microphone(() => setState(() {
          _leftKeyboardButton = true;
          _rightKeyboardButton = false;
          _toolsVisible = false;
          _emojiVisible = false;
          unfocus();
        }));
  }

  void onTapVoiceInput() {
    if (!widget.enabled) return;
    Permissions.microphone(() => setState(() {
          _leftKeyboardButton = false;
          _rightKeyboardButton = true;
          _emojiVisible = false;
          _toolsVisible = false;
          unfocus();
        }));
  }

  void onTapEmoji() {
    if (!widget.enabled) return;
    setState(() {
      _rightKeyboardButton = true;
      _leftKeyboardButton = false;
      _emojiVisible = true;
      _toolsVisible = false;
      unfocus();
    });
  }

  focus() => FocusScope.of(context).requestFocus(widget.focusNode);

  unfocus() => FocusScope.of(context).requestFocus(FocusNode());
}


class _QuoteView extends StatelessWidget {
  const _QuoteView({
    this.onClose,
    this.title,
    this.content,
    this.textSpan,
  }) : assert(content != null || textSpan != null, 'Either content or textSpan must be provided.');

  final VoidCallback? onClose;
  final String? title;       // 用于展示昵称（前缀）
  final String? content;     // 引用的文本内容
  final InlineSpan? textSpan;

  @override
  Widget build(BuildContext context) {
    final nick = (title ?? '').trim();
    final body = (content ?? '').trim();
    // 如果都为空则不显示
    if (nick.isEmpty && body.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: EdgeInsets.only(bottom: 10.h, left: 56.w, right: 80.w),
      color: Styles.c_F0F2F6,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onClose,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          decoration: BoxDecoration(
            color: Styles.c_FFFFFF,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      if (nick.isNotEmpty)
                        TextSpan(
                          text: nick, // 这里传入的 title 已经包含 " : "
                          style: Styles.ts_8E9AB0_14sp,
                        ),
                      if (body.isNotEmpty)
                        TextSpan(
                          text: body,
                          style: Styles.ts_8E9AB0_14sp,
                        ),
                    ],
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onClose,
                child: ImageRes.delQuote.toImage
                  ..width = 14.w
                  ..height = 14.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _SubView extends StatelessWidget {
  const _SubView({
    this.onClose,
    this.title,
    this.content,
    this.textSpan,
  }) : assert(content != null || textSpan != null, 'Either content or textSpan must be provided.');
  final VoidCallback? onClose;
  final String? title;
  final String? content;
  final InlineSpan? textSpan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h, left: 56.w, right: 100.w),
      color: Styles.c_F0F2F6,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onClose,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          decoration: BoxDecoration(
            color: Styles.c_FFFFFF,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        style: Styles.ts_8E9AB0_14sp,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (content != null)
                      Text(
                        content!,
                        style: Styles.ts_8E9AB0_14sp,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (textSpan != null)
                      Expanded(
                        child: RichText(
                          text: textSpan!,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
              ImageRes.delQuote.toImage
                ..width = 14.w
                ..height = 14.h,
            ],
          ),
        ),
      ),
    );
  }
}
