import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 价格输入组件数据模型
class PriceInputData {
  /// 左侧图标
  final IconData? leftIcon;
  
  /// 左侧文本
  final String leftText;
  
  /// 左侧编辑框内容
  final String leftInputValue;
  
  /// 左侧编辑框提示文本
  final String leftInputHint;
  
  /// 右侧编辑框内容
  final String rightInputValue;
  
  /// 右侧编辑框提示文本
  final String rightInputHint;
  
  /// 是否启用
  final bool enabled;
  
  /// 是否只读
  final bool readOnly;
  
  /// 是否自动获取焦点
  final bool autofocus;
  
  /// 键盘类型
  final TextInputType keyboardType;
  
  /// 文本对齐方式
  final TextAlign textAlign;
  
  /// 最大输入长度
  final int? maxLength;
  
  /// 输入格式化器
  final List<TextInputFormatter>? inputFormatters;

  const PriceInputData({
    this.leftIcon,
    this.leftText = '',
    this.leftInputValue = '',
    this.leftInputHint = '请输入限价',
    this.rightInputValue = '',
    this.rightInputHint = '选填',
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.maxLength,
    this.inputFormatters,
  });

  /// 复制并更新数据
  PriceInputData copyWith({
    IconData? leftIcon,
    String? leftText,
    String? leftInputValue,
    String? leftInputHint,
    String? rightInputValue,
    String? rightInputHint,
    bool? enabled,
    bool? readOnly,
    bool? autofocus,
    TextInputType? keyboardType,
    TextAlign? textAlign,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return PriceInputData(
      leftIcon: leftIcon ?? this.leftIcon,
      leftText: leftText ?? this.leftText,
      leftInputValue: leftInputValue ?? this.leftInputValue,
      leftInputHint: leftInputHint ?? this.leftInputHint,
      rightInputValue: rightInputValue ?? this.rightInputValue,
      rightInputHint: rightInputHint ?? this.rightInputHint,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      autofocus: autofocus ?? this.autofocus,
      keyboardType: keyboardType ?? this.keyboardType,
      textAlign: textAlign ?? this.textAlign,
      maxLength: maxLength ?? this.maxLength,
      inputFormatters: inputFormatters ?? this.inputFormatters,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PriceInputData &&
        other.leftIcon == leftIcon &&
        other.leftText == leftText &&
        other.leftInputValue == leftInputValue &&
        other.leftInputHint == leftInputHint &&
        other.rightInputValue == rightInputValue &&
        other.rightInputHint == rightInputHint &&
        other.enabled == enabled &&
        other.readOnly == readOnly &&
        other.autofocus == autofocus &&
        other.keyboardType == keyboardType &&
        other.textAlign == textAlign &&
        other.maxLength == maxLength;
  }

  @override
  int get hashCode {
    return Object.hash(
      leftIcon,
      leftText,
      leftInputValue,
      leftInputHint,
      rightInputValue,
      rightInputHint,
      enabled,
      readOnly,
      autofocus,
      keyboardType,
      textAlign,
      maxLength,
    );
  }
}

/// 左侧图标区域样式配置
class LeftIconAreaStyle {
  /// 宽度
  final double width;
  
  /// 高度
  final double height;
  
  /// 背景颜色
  final Color backgroundColor;
  
  /// 边框颜色
  final Color borderColor;
  
  /// 边框宽度
  final double borderWidth;
  
  /// 圆角半径
  final double borderRadius;
  
  /// 内边距
  final EdgeInsets padding;
  
  /// 图标大小
  final double iconSize;
  
  /// 图标颜色
  final Color iconColor;
  
  /// 文本样式
  final TextStyle textStyle;
  
  /// 文本与图标的间距
  final double textSpacing;

  const LeftIconAreaStyle({
    this.width = 80.0,
    this.height = 40.0,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.borderColor = const Color(0xFFE0E0E0),
    this.borderWidth = 1.0,
    this.borderRadius = 6.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    this.iconSize = 16.0,
    this.iconColor = const Color(0xFF666666),
    this.textStyle = const TextStyle(
      fontSize: 14.0,
      color: Color(0xFF666666),
      fontWeight: FontWeight.normal,
    ),
    this.textSpacing = 6.0,
  });

  LeftIconAreaStyle copyWith({
    double? width,
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
    double? iconSize,
    Color? iconColor,
    TextStyle? textStyle,
    double? textSpacing,
  }) {
    return LeftIconAreaStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      iconSize: iconSize ?? this.iconSize,
      iconColor: iconColor ?? this.iconColor,
      textStyle: textStyle ?? this.textStyle,
      textSpacing: textSpacing ?? this.textSpacing,
    );
  }
}

/// 输入框区域样式配置
class InputAreaStyle {
  /// 高度
  final double height;
  
  /// 背景颜色
  final Color backgroundColor;
  
  /// 边框颜色
  final Color borderColor;
  
  /// 边框宽度
  final double borderWidth;
  
  /// 圆角半径
  final double borderRadius;
  
  /// 内边距
  final EdgeInsets padding;
  
  /// 文本样式
  final TextStyle textStyle;
  
  /// 提示文本样式
  final TextStyle hintStyle;

  const InputAreaStyle({
    this.height = 40.0,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.borderColor = const Color(0xFFE0E0E0),
    this.borderWidth = 1.0,
    this.borderRadius = 6.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    this.textStyle = const TextStyle(
      fontSize: 14.0,
      color: Colors.black87,
      fontWeight: FontWeight.normal,
    ),
    this.hintStyle = const TextStyle(
      fontSize: 14.0,
      color: Color(0xFF999999),
      fontWeight: FontWeight.normal,
    ),
  });

  InputAreaStyle copyWith({
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
    TextStyle? textStyle,
    TextStyle? hintStyle,
  }) {
    return InputAreaStyle(
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
    );
  }
}

/// 间隔线样式配置
class SeparatorStyle {
  /// 宽度
  final double width;
  
  /// 高度
  final double height;
  
  /// 背景颜色
  final Color backgroundColor;
  
  /// 圆角半径
  final double borderRadius;

  const SeparatorStyle({
    this.width = 20.0,
    this.height = 1.0,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.borderRadius = 0.0,
  });

  SeparatorStyle copyWith({
    double? width,
    double? height,
    Color? backgroundColor,
    double? borderRadius,
  }) {
    return SeparatorStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}

/// 价格输入组件样式配置
class PriceInputStyle {
  /// 组件宽度
  final double width;
  
  /// 组件高度
  final double height;
  
  /// 背景颜色
  final Color backgroundColor;
  
  /// 边框颜色
  final Color borderColor;
  
  /// 边框宽度
  final double borderWidth;
  
  /// 圆角半径
  final double borderRadius;
  
  /// 内边距
  final EdgeInsets padding;
  
  /// 阴影
  final List<BoxShadow>? boxShadow;
  
  /// 左侧图标区域样式
  final LeftIconAreaStyle leftIconAreaStyle;
  
  /// 上方输入框区域样式（价格2）
  final InputAreaStyle topInputAreaStyle;
  
  /// 下方输入框区域样式
  final InputAreaStyle bottomInputAreaStyle;
  
  /// 间隔线样式
  final SeparatorStyle separatorStyle;
  
  /// 输入框之间的间距
  final double inputSpacing;
  
  /// 上下区域之间的间距
  final double verticalSpacing;

  const PriceInputStyle({
    this.width = 300.0,
    this.height = 100.0,
    this.backgroundColor = Colors.white,
    this.borderColor = const Color(0xFFE0E0E0),
    this.borderWidth = 1.0,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.all(12.0),
    this.boxShadow,
    this.leftIconAreaStyle = const LeftIconAreaStyle(),
    this.topInputAreaStyle = const InputAreaStyle(),
    this.bottomInputAreaStyle = const InputAreaStyle(),
    this.separatorStyle = const SeparatorStyle(),
    this.inputSpacing = 8.0,
    this.verticalSpacing = 8.0,
  });

  /// 复制并更新样式
  PriceInputStyle copyWith({
    double? width,
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
    List<BoxShadow>? boxShadow,
    LeftIconAreaStyle? leftIconAreaStyle,
    InputAreaStyle? topInputAreaStyle,
    InputAreaStyle? bottomInputAreaStyle,
    SeparatorStyle? separatorStyle,
    double? inputSpacing,
    double? verticalSpacing,
  }) {
    return PriceInputStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      boxShadow: boxShadow ?? this.boxShadow,
      leftIconAreaStyle: leftIconAreaStyle ?? this.leftIconAreaStyle,
      topInputAreaStyle: topInputAreaStyle ?? this.topInputAreaStyle,
      bottomInputAreaStyle: bottomInputAreaStyle ?? this.bottomInputAreaStyle,
      separatorStyle: separatorStyle ?? this.separatorStyle,
      inputSpacing: inputSpacing ?? this.inputSpacing,
      verticalSpacing: verticalSpacing ?? this.verticalSpacing,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PriceInputStyle &&
        other.width == width &&
        other.height == height &&
        other.backgroundColor == backgroundColor &&
        other.borderColor == borderColor &&
        other.borderWidth == borderWidth &&
        other.borderRadius == borderRadius &&
        other.padding == padding &&
        other.boxShadow == boxShadow &&
        other.leftIconAreaStyle == leftIconAreaStyle &&
        other.topInputAreaStyle == topInputAreaStyle &&
        other.bottomInputAreaStyle == bottomInputAreaStyle &&
        other.separatorStyle == separatorStyle &&
        other.inputSpacing == inputSpacing &&
        other.verticalSpacing == verticalSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      width,
      height,
      backgroundColor,
      borderColor,
      borderWidth,
      borderRadius,
      padding,
      boxShadow,
      leftIconAreaStyle,
      topInputAreaStyle,
      bottomInputAreaStyle,
      separatorStyle,
      inputSpacing,
      verticalSpacing,
    );
  }
}

/// 价格输入组件预设样式
class PriceInputPresets {
  /// 简约样式
  static PriceInputStyle minimalStyle() {
    return const PriceInputStyle(
      backgroundColor: Colors.white,
      borderColor: const Color(0xFFE0E0E0),
      borderRadius: 4.0,
      leftIconAreaStyle: const LeftIconAreaStyle(
        backgroundColor: Color(0xFFF8F9FA),
        borderColor: Color(0xFFE9ECEF),
      ),
      topInputAreaStyle: const InputAreaStyle(
        backgroundColor: Color(0xFFF8F9FA),
        borderColor: Color(0xFFE9ECEF),
      ),
      bottomInputAreaStyle: const InputAreaStyle(
        backgroundColor: Color(0xFFF8F9FA),
        borderColor: Color(0xFFE9ECEF),
      ),
      separatorStyle: const SeparatorStyle(
        backgroundColor: Color(0xFFF8F9FA),
      ),
    );
  }

  /// 圆润样式
  static PriceInputStyle roundedStyle() {
    return const PriceInputStyle(
      backgroundColor: Colors.white,
      borderColor: const Color(0xFFE0E0E0),
      borderRadius: 16.0,
      leftIconAreaStyle: const LeftIconAreaStyle(
        borderRadius: 12.0,
      ),
      topInputAreaStyle: const InputAreaStyle(
        borderRadius: 12.0,
      ),
      bottomInputAreaStyle: const InputAreaStyle(
        borderRadius: 12.0,
      ),
      separatorStyle: const SeparatorStyle(
        borderRadius: 12.0,
      ),
    );
  }

  /// 深色样式
  static PriceInputStyle darkStyle() {
    return const PriceInputStyle(
      backgroundColor: const Color(0xFF2C2C2C),
      borderColor: const Color(0xFF404040),
      leftIconAreaStyle: const LeftIconAreaStyle(
        backgroundColor: Color(0xFF404040),
        borderColor: Color(0xFF555555),
        iconColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      topInputAreaStyle: const InputAreaStyle(
        backgroundColor: Color(0xFF404040),
        borderColor: Color(0xFF555555),
        textStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xFF999999),
          fontWeight: FontWeight.normal,
        ),
      ),
      bottomInputAreaStyle: const InputAreaStyle(
        backgroundColor: Color(0xFF404040),
        borderColor: Color(0xFF555555),
        textStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xFF999999),
          fontWeight: FontWeight.normal,
        ),
      ),
      separatorStyle: const SeparatorStyle(
        backgroundColor: Color(0xFF404040),
      ),
    );
  }

  /// 边框样式
  static PriceInputStyle borderedStyle() {
    return const PriceInputStyle(
      backgroundColor: Colors.white,
      borderColor: const Color(0xFF007BFF),
      borderWidth: 2.0,
      borderRadius: 8.0,
      leftIconAreaStyle: const LeftIconAreaStyle(
        borderColor: Color(0xFF007BFF),
        borderWidth: 2.0,
      ),
      topInputAreaStyle: const InputAreaStyle(
        borderColor: Color(0xFF007BFF),
        borderWidth: 2.0,
      ),
      bottomInputAreaStyle: const InputAreaStyle(
        borderColor: Color(0xFF007BFF),
        borderWidth: 2.0,
      ),
    );
  }

  /// 紧凑样式
  static PriceInputStyle compactStyle() {
    return const PriceInputStyle(
      height: 40.0,
      padding: const EdgeInsets.all(8.0),
      leftIconAreaStyle: const LeftIconAreaStyle(
        width: 60.0,
        height: 32.0,
        iconSize: 14.0,
        textStyle: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF666666),
          fontWeight: FontWeight.normal,
        ),
      ),
      topInputAreaStyle: const InputAreaStyle(
        height: 32.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        textStyle: TextStyle(
          fontSize: 12.0,
          color: Colors.black87,
          fontWeight: FontWeight.normal,
        ),
        hintStyle: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF999999),
          fontWeight: FontWeight.normal,
        ),
      ),
      bottomInputAreaStyle: const InputAreaStyle(
        height: 32.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        textStyle: TextStyle(
          fontSize: 12.0,
          color: Colors.black87,
          fontWeight: FontWeight.normal,
        ),
        hintStyle: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF999999),
          fontWeight: FontWeight.normal,
        ),
      ),
      separatorStyle: const SeparatorStyle(
        width: 6.0,
        height: 32.0,
      ),
    );
  }
}
