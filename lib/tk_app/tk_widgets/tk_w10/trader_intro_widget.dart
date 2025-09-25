import 'package:flutter/material.dart';
import 'trader_intro_data.dart';

/// 交易员简介编辑组件
/// 
/// 一个可复用的交易员简介编辑组件，支持完全自定义样式和配置
class TraderIntroWidget extends StatefulWidget {
  /// 组件数据
  final TraderIntroData data;
  
  /// 样式配置
  final TraderIntroStyle? style;
  
  /// 内容变化回调
  final ValueChanged<String>? onChanged;
  
  /// 获得焦点回调
  final VoidCallback? onFocusGained;
  
  /// 失去焦点回调
  final VoidCallback? onFocusLost;
  
  /// 提交回调
  final ValueChanged<String>? onSubmitted;
  
  /// 是否显示字符计数
  final bool showCharCount;
  
  /// 字符计数样式
  final TextStyle? charCountStyle;
  
  const TraderIntroWidget({
    Key? key,
    required this.data,
    this.style,
    this.onChanged,
    this.onFocusGained,
    this.onFocusLost,
    this.onSubmitted,
    this.showCharCount = false,
    this.charCountStyle,
  }) : super(key: key);
  
  @override
  State<TraderIntroWidget> createState() => _TraderIntroWidgetState();
}

class _TraderIntroWidgetState extends State<TraderIntroWidget> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _isFocused = false;
  
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.data.content);
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }
  
  @override
  void didUpdateWidget(TraderIntroWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data.content != widget.data.content) {
      _controller.text = widget.data.content;
    }
  }
  
  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
    
    if (_isFocused) {
      widget.onFocusGained?.call();
    } else {
      widget.onFocusLost?.call();
    }
  }
  
  void _onTextChanged(String value) {
    widget.onChanged?.call(value);
  }
  
  void _onSubmitted(String value) {
    widget.onSubmitted?.call(value);
  }
  
  @override
  void dispose() {
    _controller.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final style = widget.style ?? const TraderIntroStyle();
    final theme = Theme.of(context);
    
    // 参数验证：当expands为true时，maxLines和minLines必须为null
    int? maxLines = widget.data.maxLines;
    int? minLines = widget.data.minLines;
    bool expands = widget.data.expands;
    
    if (expands) {
      maxLines = null;
      minLines = null;
    }
    
    return Container(
      margin: style.margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. 标题文本
          if (widget.data.title.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                widget.data.title,
                style: style.titleStyle ?? 
                       theme.textTheme.titleMedium?.copyWith(
                         fontWeight: FontWeight.w600,
                         color: theme.colorScheme.onSurface,
                       ),
              ),
            ),
          
          // 2. 编辑框背景和区域
          Container(
            height: style.height,
            constraints: BoxConstraints(
              minHeight: style.minHeight ?? 120,
              maxHeight: style.maxHeight ?? 200,
            ),
            decoration: BoxDecoration(
              color: style.backgroundColor ?? 
                     theme.colorScheme.surface,
              border: Border.all(
                color: style.borderColor ?? 
                       (_isFocused 
                         ? theme.colorScheme.primary 
                         : theme.colorScheme.outline.withOpacity(0.3)),
                width: style.borderWidth ?? 1.0,
              ),
              borderRadius: BorderRadius.circular(
                style.borderRadius ?? 8.0,
              ),
            ),
            child: Stack(
              children: [
                // 3. 编辑框区域
                Positioned.fill(
                  child: Padding(
                    padding: style.padding ?? 
                             const EdgeInsets.all(12),
                    child: TextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      enabled: widget.data.enabled,
                      autofocus: widget.data.autofocus,
                      maxLength: widget.data.maxLength,
                      maxLines: maxLines,
                      minLines: minLines,
                      expands: expands,
                      textAlignVertical: TextAlignVertical.top,
                      style: style.inputStyle ?? 
                             theme.textTheme.bodyMedium?.copyWith(
                               color: theme.colorScheme.onSurface,
                             ),
                      decoration: InputDecoration(
                        // 4. 编辑框提示语
                        hintText: widget.data.placeholder,
                        hintStyle: style.placeholderStyle ?? 
                                   theme.textTheme.bodyMedium?.copyWith(
                                     color: theme.colorScheme.onSurface.withOpacity(0.6),
                                   ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        counterText: '', // 隐藏默认字符计数
                      ),
                      onChanged: _onTextChanged,
                      onSubmitted: _onSubmitted,
                    ),
                  ),
                ),
                
                // 字符计数显示
                if (widget.showCharCount && widget.data.maxLength != null)
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Text(
                      '${_controller.text.length}/${widget.data.maxLength}',
                      style: widget.charCountStyle ?? 
                             theme.textTheme.bodySmall?.copyWith(
                               color: theme.colorScheme.onSurface.withOpacity(0.6),
                             ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// 交易员简介编辑组件构建器
/// 
/// 提供更简洁的API来创建交易员简介编辑组件
class TraderIntroBuilder {
  TraderIntroData _data = const TraderIntroData();
  TraderIntroStyle? _style;
  ValueChanged<String>? _onChanged;
  VoidCallback? _onFocusGained;
  VoidCallback? _onFocusLost;
  ValueChanged<String>? _onSubmitted;
  bool _showCharCount = false;
  TextStyle? _charCountStyle;
  
  TraderIntroBuilder title(String title) {
    _data = _data.copyWith(title: title);
    return this;
  }
  
  TraderIntroBuilder placeholder(String placeholder) {
    _data = _data.copyWith(placeholder: placeholder);
    return this;
  }
  
  TraderIntroBuilder content(String content) {
    _data = _data.copyWith(content: content);
    return this;
  }
  
  TraderIntroBuilder maxLength(int maxLength) {
    _data = _data.copyWith(maxLength: maxLength);
    return this;
  }
  
  TraderIntroBuilder enabled(bool enabled) {
    _data = _data.copyWith(enabled: enabled);
    return this;
  }
  
  TraderIntroBuilder autofocus(bool autofocus) {
    _data = _data.copyWith(autofocus: autofocus);
    return this;
  }
  
  TraderIntroBuilder maxLines(int maxLines) {
    _data = _data.copyWith(maxLines: maxLines);
    return this;
  }
  
  TraderIntroBuilder minLines(int minLines) {
    _data = _data.copyWith(minLines: minLines);
    return this;
  }
  
  TraderIntroBuilder expands(bool expands) {
    _data = _data.copyWith(expands: expands);
    return this;
  }
  
  TraderIntroBuilder style(TraderIntroStyle style) {
    _style = style;
    return this;
  }
  
  TraderIntroBuilder onChanged(ValueChanged<String> onChanged) {
    _onChanged = onChanged;
    return this;
  }
  
  TraderIntroBuilder onFocusGained(VoidCallback onFocusGained) {
    _onFocusGained = onFocusGained;
    return this;
  }
  
  TraderIntroBuilder onFocusLost(VoidCallback onFocusLost) {
    _onFocusLost = onFocusLost;
    return this;
  }
  
  TraderIntroBuilder onSubmitted(ValueChanged<String> onSubmitted) {
    _onSubmitted = onSubmitted;
    return this;
  }
  
  TraderIntroBuilder showCharCount(bool showCharCount) {
    _showCharCount = showCharCount;
    return this;
  }
  
  TraderIntroBuilder charCountStyle(TextStyle charCountStyle) {
    _charCountStyle = charCountStyle;
    return this;
  }
  
  TraderIntroWidget build() {
    // 参数验证：当expands为true时，maxLines和minLines必须为null
    if (_data.expands && (_data.maxLines != null || _data.minLines != null)) {
      _data = _data.copyWith(maxLines: null, minLines: null);
    }
    
    return TraderIntroWidget(
      data: _data,
      style: _style,
      onChanged: _onChanged,
      onFocusGained: _onFocusGained,
      onFocusLost: _onFocusLost,
      onSubmitted: _onSubmitted,
      showCharCount: _showCharCount,
      charCountStyle: _charCountStyle,
    );
  }
}
