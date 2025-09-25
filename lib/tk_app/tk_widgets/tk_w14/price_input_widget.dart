import 'package:flutter/material.dart';
import 'price_input_data.dart';

/// 价格输入组件
/// 
/// 一个包含左侧图标+文本区域和两个编辑框的组合组件
/// 布局结构：
/// 1. 背景容器
/// 2. 左侧图标+文本区域
/// 3. 左侧编辑框
/// 4. 间隔线
/// 5. 右侧编辑框
class PriceInputWidget extends StatefulWidget {
  /// 组件数据
  final PriceInputData data;
  
  /// 组件样式
  final PriceInputStyle style;
  
  /// 左侧输入框内容变化回调
  final ValueChanged<String>? onLeftInputChanged;
  
  /// 右侧输入框内容变化回调
  final ValueChanged<String>? onRightInputChanged;
  
  /// 左侧输入框焦点变化回调
  final ValueChanged<bool>? onLeftFocusChanged;
  
  /// 右侧输入框焦点变化回调
  final ValueChanged<bool>? onRightFocusChanged;
  
  /// 左侧输入框点击回调
  final VoidCallback? onLeftInputTap;
  
  /// 右侧输入框点击回调
  final VoidCallback? onRightInputTap;
  
  /// 整个组件点击回调
  final VoidCallback? onTap;

  const PriceInputWidget({
    super.key,
    required this.data,
    this.style = const PriceInputStyle(),
    this.onLeftInputChanged,
    this.onRightInputChanged,
    this.onLeftFocusChanged,
    this.onRightFocusChanged,
    this.onLeftInputTap,
    this.onRightInputTap,
    this.onTap,
  });

  @override
  State<PriceInputWidget> createState() => _PriceInputWidgetState();
}

class _PriceInputWidgetState extends State<PriceInputWidget> {
  late TextEditingController _leftController;
  late TextEditingController _rightController;
  late FocusNode _leftFocusNode;
  late FocusNode _rightFocusNode;

  @override
  void initState() {
    super.initState();
    _leftController = TextEditingController(text: widget.data.leftInputValue);
    _rightController = TextEditingController(text: widget.data.rightInputValue);
    _leftFocusNode = FocusNode();
    _rightFocusNode = FocusNode();
    
    _leftFocusNode.addListener(() {
      widget.onLeftFocusChanged?.call(_leftFocusNode.hasFocus);
    });
    
    _rightFocusNode.addListener(() {
      widget.onRightFocusChanged?.call(_rightFocusNode.hasFocus);
    });
  }

  @override
  void didUpdateWidget(PriceInputWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    if (oldWidget.data.leftInputValue != widget.data.leftInputValue) {
      _leftController.text = widget.data.leftInputValue;
    }
    
    if (oldWidget.data.rightInputValue != widget.data.rightInputValue) {
      _rightController.text = widget.data.rightInputValue;
    }
  }

  @override
  void dispose() {
    _leftController.dispose();
    _rightController.dispose();
    _leftFocusNode.dispose();
    _rightFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.style.width,
        constraints: BoxConstraints(
          minHeight: widget.style.height,
        ),
        decoration: BoxDecoration(
          color: widget.style.backgroundColor,
          border: Border.all(
            color: widget.style.borderColor,
            width: widget.style.borderWidth,
          ),
          borderRadius: BorderRadius.circular(widget.style.borderRadius),
          boxShadow: widget.style.boxShadow,
        ),
        padding: widget.style.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 上方：价格标签（图标+文本）
            _buildPriceLabel(),
            SizedBox(height: widget.style.verticalSpacing),
            
            // 下方：两个编辑框水平排列
            Row(
              children: [
                // 左侧编辑框
                Expanded(
                  child: _buildLeftInputArea(),
                ),
                
                // 间隔线
                _buildSeparator(),
                
                // 右侧编辑框
                Expanded(
                  child: _buildRightInputArea(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 构建价格标签（图标+文本）
  Widget _buildPriceLabel() {
    return Container(
      width: double.infinity,
      height: widget.style.leftIconAreaStyle.height,
      decoration: BoxDecoration(
        color: widget.style.leftIconAreaStyle.backgroundColor,
        border: Border.all(
          color: widget.style.leftIconAreaStyle.borderColor,
          width: widget.style.leftIconAreaStyle.borderWidth,
        ),
        borderRadius: BorderRadius.circular(widget.style.leftIconAreaStyle.borderRadius),
      ),
      padding: widget.style.leftIconAreaStyle.padding,
      child: Row(
        children: [
          if (widget.data.leftIcon != null) ...[
            Icon(
              widget.data.leftIcon,
              size: widget.style.leftIconAreaStyle.iconSize,
              color: widget.style.leftIconAreaStyle.iconColor,
            ),
            SizedBox(width: widget.style.leftIconAreaStyle.textSpacing),
          ],
          Text(
            widget.data.leftText,
            style: widget.style.leftIconAreaStyle.textStyle,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// 构建左侧编辑框区域
  Widget _buildLeftInputArea() {
    return Container(
      height: widget.style.bottomInputAreaStyle.height,
      decoration: BoxDecoration(
        color: widget.style.bottomInputAreaStyle.backgroundColor,
        border: Border.all(
          color: widget.style.bottomInputAreaStyle.borderColor,
          width: widget.style.bottomInputAreaStyle.borderWidth,
        ),
        borderRadius: BorderRadius.circular(widget.style.bottomInputAreaStyle.borderRadius),
      ),
      child: TextField(
        controller: _leftController,
        focusNode: _leftFocusNode,
        enabled: widget.data.enabled,
        readOnly: widget.data.readOnly,
        autofocus: widget.data.autofocus,
        keyboardType: widget.data.keyboardType,
        textAlign: widget.data.textAlign,
        maxLength: widget.data.maxLength,
        inputFormatters: widget.data.inputFormatters,
        style: widget.style.bottomInputAreaStyle.textStyle,
        decoration: InputDecoration(
          hintText: widget.data.leftInputHint,
          hintStyle: widget.style.bottomInputAreaStyle.hintStyle,
          border: InputBorder.none,
          contentPadding: widget.style.bottomInputAreaStyle.padding,
          counterText: '', // 隐藏字符计数
        ),
        onChanged: (value) {
          widget.onLeftInputChanged?.call(value);
        },
        onTap: widget.onLeftInputTap,
      ),
    );
  }

  /// 构建间隔线
  Widget _buildSeparator() {
    return Container(
      width: widget.style.separatorStyle.width,
      height: 1.0, // 水平线的高度为1
      margin: EdgeInsets.symmetric(horizontal: widget.style.inputSpacing / 2),
      decoration: BoxDecoration(
        color: widget.style.separatorStyle.backgroundColor,
        borderRadius: BorderRadius.circular(0.5),
      ),
    );
  }

  /// 构建右侧编辑框区域
  Widget _buildRightInputArea() {
    return Container(
      height: widget.style.bottomInputAreaStyle.height,
      decoration: BoxDecoration(
        color: widget.style.bottomInputAreaStyle.backgroundColor,
        border: Border.all(
          color: widget.style.bottomInputAreaStyle.borderColor,
          width: widget.style.bottomInputAreaStyle.borderWidth,
        ),
        borderRadius: BorderRadius.circular(widget.style.bottomInputAreaStyle.borderRadius),
      ),
      child: TextField(
        controller: _rightController,
        focusNode: _rightFocusNode,
        enabled: widget.data.enabled,
        readOnly: widget.data.readOnly,
        autofocus: false, // 右侧编辑框不自动获取焦点
        keyboardType: widget.data.keyboardType,
        textAlign: widget.data.textAlign,
        maxLength: widget.data.maxLength,
        inputFormatters: widget.data.inputFormatters,
        style: widget.style.bottomInputAreaStyle.textStyle,
        decoration: InputDecoration(
          hintText: widget.data.rightInputHint,
          hintStyle: widget.style.bottomInputAreaStyle.hintStyle,
          border: InputBorder.none,
          contentPadding: widget.style.bottomInputAreaStyle.padding,
          counterText: '', // 隐藏字符计数
        ),
        onChanged: (value) {
          widget.onRightInputChanged?.call(value);
        },
        onTap: widget.onRightInputTap,
      ),
    );
  }
}

/// 价格输入组件构建器
class PriceInputBuilder {
  PriceInputData _data = const PriceInputData();
  PriceInputStyle _style = const PriceInputStyle();
  ValueChanged<String>? _onLeftInputChanged;
  ValueChanged<String>? _onRightInputChanged;
  ValueChanged<bool>? _onLeftFocusChanged;
  ValueChanged<bool>? _onRightFocusChanged;
  VoidCallback? _onLeftInputTap;
  VoidCallback? _onRightInputTap;
  VoidCallback? _onTap;

  /// 设置数据
  PriceInputBuilder data(PriceInputData data) {
    _data = data;
    return this;
  }

  /// 设置样式
  PriceInputBuilder style(PriceInputStyle style) {
    _style = style;
    return this;
  }

  /// 设置左侧输入框内容变化回调
  PriceInputBuilder onLeftInputChanged(ValueChanged<String>? callback) {
    _onLeftInputChanged = callback;
    return this;
  }

  /// 设置右侧输入框内容变化回调
  PriceInputBuilder onRightInputChanged(ValueChanged<String>? callback) {
    _onRightInputChanged = callback;
    return this;
  }

  /// 设置左侧输入框焦点变化回调
  PriceInputBuilder onLeftFocusChanged(ValueChanged<bool>? callback) {
    _onLeftFocusChanged = callback;
    return this;
  }

  /// 设置右侧输入框焦点变化回调
  PriceInputBuilder onRightFocusChanged(ValueChanged<bool>? callback) {
    _onRightFocusChanged = callback;
    return this;
  }

  /// 设置左侧输入框点击回调
  PriceInputBuilder onLeftInputTap(VoidCallback? callback) {
    _onLeftInputTap = callback;
    return this;
  }

  /// 设置右侧输入框点击回调
  PriceInputBuilder onRightInputTap(VoidCallback? callback) {
    _onRightInputTap = callback;
    return this;
  }

  /// 设置整个组件点击回调
  PriceInputBuilder onTap(VoidCallback? callback) {
    _onTap = callback;
    return this;
  }

  /// 构建组件
  PriceInputWidget build() {
    return PriceInputWidget(
      data: _data,
      style: _style,
      onLeftInputChanged: _onLeftInputChanged,
      onRightInputChanged: _onRightInputChanged,
      onLeftFocusChanged: _onLeftFocusChanged,
      onRightFocusChanged: _onRightFocusChanged,
      onLeftInputTap: _onLeftInputTap,
      onRightInputTap: _onRightInputTap,
      onTap: _onTap,
    );
  }
}

/// 价格输入组件工厂
class PriceInputFactory {
  /// 创建基础组件
  static PriceInputWidget create({
    required PriceInputData data,
    PriceInputStyle? style,
    ValueChanged<String>? onLeftInputChanged,
    ValueChanged<String>? onRightInputChanged,
    ValueChanged<bool>? onLeftFocusChanged,
    ValueChanged<bool>? onRightFocusChanged,
    VoidCallback? onLeftInputTap,
    VoidCallback? onRightInputTap,
    VoidCallback? onTap,
  }) {
    return PriceInputWidget(
      data: data,
      style: style ?? const PriceInputStyle(),
      onLeftInputChanged: onLeftInputChanged,
      onRightInputChanged: onRightInputChanged,
      onLeftFocusChanged: onLeftFocusChanged,
      onRightFocusChanged: onRightFocusChanged,
      onLeftInputTap: onLeftInputTap,
      onRightInputTap: onRightInputTap,
      onTap: onTap,
    );
  }

  /// 使用预设样式创建组件
  static PriceInputWidget createWithPreset({
    required PriceInputData data,
    required PriceInputStyle Function() presetStyle,
    ValueChanged<String>? onLeftInputChanged,
    ValueChanged<String>? onRightInputChanged,
    ValueChanged<bool>? onLeftFocusChanged,
    ValueChanged<bool>? onRightFocusChanged,
    VoidCallback? onLeftInputTap,
    VoidCallback? onRightInputTap,
    VoidCallback? onTap,
  }) {
    return create(
      data: data,
      style: presetStyle(),
      onLeftInputChanged: onLeftInputChanged,
      onRightInputChanged: onRightInputChanged,
      onLeftFocusChanged: onLeftFocusChanged,
      onRightFocusChanged: onRightFocusChanged,
      onLeftInputTap: onLeftInputTap,
      onRightInputTap: onRightInputTap,
      onTap: onTap,
    );
  }

  /// 创建构建器
  static PriceInputBuilder builder() {
    return PriceInputBuilder();
  }
}
