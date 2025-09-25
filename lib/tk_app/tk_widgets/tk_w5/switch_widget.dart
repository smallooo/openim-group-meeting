import 'package:flutter/material.dart';

/// 开关组件
/// 左侧文字，右侧开关，支持完全自定义
class SwitchWidget extends StatelessWidget {
  /// 左侧文字内容
  final String text;
  
  /// 文字样式
  final TextStyle? textStyle;
  
  /// 开关状态
  final bool value;
  
  /// 开关状态改变回调
  final ValueChanged<bool>? onChanged;
  
  /// 是否启用开关
  final bool enabled;
  
  /// 开关激活时的颜色
  final Color? activeColor;
  
  /// 开关未激活时的颜色
  final Color? inactiveColor;
  
  /// 开关滑块颜色
  final Color? thumbColor;
  
  /// 开关轨道颜色
  final Color? trackColor;
  
  /// 开关大小
  final double? switchSize;
  
  /// 组件内边距
  final EdgeInsetsGeometry? padding;
  
  /// 组件外边距
  final EdgeInsetsGeometry? margin;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 点击整个组件的回调
  final VoidCallback? onTap;
  
  /// 左侧图标
  final Widget? leadingIcon;
  
  /// 左侧图标大小
  final double? leadingIconSize;
  
  /// 左侧图标颜色
  final Color? leadingIconColor;
  
  /// 右侧额外内容
  final Widget? trailing;
  
  /// 是否显示分割线
  final bool showDivider;
  
  /// 分割线颜色
  final Color? dividerColor;
  
  /// 分割线高度
  final double? dividerHeight;
  
  /// 分割线左边距
  final double? dividerLeftMargin;
  
  /// 分割线右边距
  final double? dividerRightMargin;

  const SwitchWidget({
    Key? key,
    required this.text,
    required this.value,
    this.textStyle,
    this.onChanged,
    this.enabled = true,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.trackColor,
    this.switchSize,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.borderRadius,
    this.onTap,
    this.leadingIcon,
    this.leadingIconSize,
    this.leadingIconColor,
    this.trailing,
    this.showDivider = false,
    this.dividerColor,
    this.dividerHeight,
    this.dividerLeftMargin,
    this.dividerRightMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius != null 
            ? BorderRadius.circular(borderRadius!) 
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: borderRadius != null 
              ? BorderRadius.circular(borderRadius!) 
              : null,
          child: Container(
            padding: padding ?? const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    // 左侧图标
                    if (leadingIcon != null) ...[
                      SizedBox(
                        width: leadingIconSize ?? 24.0,
                        height: leadingIconSize ?? 24.0,
                        child: IconTheme(
                          data: IconThemeData(
                            color: leadingIconColor ?? 
                                Theme.of(context).iconTheme.color,
                            size: leadingIconSize ?? 24.0,
                          ),
                          child: leadingIcon!,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                    ],
                    
                    // 左侧文字
                    Expanded(
                      child: Text(
                        text,
                        style: textStyle ?? 
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: enabled 
                                  ? Theme.of(context).textTheme.titleMedium?.color
                                  : Theme.of(context).disabledColor,
                            ),
                      ),
                    ),
                    
                    // 右侧额外内容
                    if (trailing != null) ...[
                      const SizedBox(width: 8.0),
                      trailing!,
                    ],
                    
                    // 右侧开关
                    const SizedBox(width: 8.0),
                    _buildSwitch(context),
                  ],
                ),
                
                // 分割线
                if (showDivider) ...[
                  const SizedBox(height: 12.0),
                  Container(
                    height: dividerHeight ?? 0.5,
                    margin: EdgeInsets.only(
                      left: dividerLeftMargin ?? 0.0,
                      right: dividerRightMargin ?? 0.0,
                    ),
                    color: dividerColor ?? 
                        Theme.of(context).dividerColor.withOpacity(0.3),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSwitch(BuildContext context) {
    if (switchSize != null) {
      return Transform.scale(
        scale: switchSize! / 20.0, // 默认开关大小约为20
        child: Switch(
          value: value,
          onChanged: enabled ? onChanged : null,
          activeColor: activeColor,
          inactiveThumbColor: inactiveColor,
          activeTrackColor: activeColor?.withOpacity(0.3),
          inactiveTrackColor: inactiveColor?.withOpacity(0.3),
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return thumbColor ?? Colors.white;
              }
              return thumbColor ?? Colors.white;
            },
          ),
          trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return activeColor ?? Theme.of(context).primaryColor;
              }
              return inactiveColor ?? Colors.grey[300];
            },
          ),
        ),
      );
    }
    
    return Switch(
      value: value,
      onChanged: enabled ? onChanged : null,
      activeColor: activeColor,
      inactiveThumbColor: inactiveColor,
      activeTrackColor: activeColor?.withOpacity(0.3),
      inactiveTrackColor: inactiveColor?.withOpacity(0.3),
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return thumbColor ?? Colors.white;
          }
          return thumbColor ?? Colors.white;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return activeColor ?? Theme.of(context).primaryColor;
          }
          return inactiveColor ?? Colors.grey[300];
        },
      ),
    );
  }
}

/// 预设样式的开关组件
class PresetSwitchWidget extends StatelessWidget {
  /// 预设样式类型
  final SwitchPresetStyle presetStyle;
  
  /// 左侧文字内容
  final String text;
  
  /// 开关状态
  final bool value;
  
  /// 开关状态改变回调
  final ValueChanged<bool>? onChanged;
  
  /// 是否启用开关
  final bool enabled;
  
  /// 点击整个组件的回调
  final VoidCallback? onTap;
  
  /// 左侧图标
  final Widget? leadingIcon;
  
  /// 右侧额外内容
  final Widget? trailing;
  
  /// 是否显示分割线
  final bool showDivider;

  const PresetSwitchWidget({
    Key? key,
    required this.presetStyle,
    required this.text,
    required this.value,
    this.onChanged,
    this.enabled = true,
    this.onTap,
    this.leadingIcon,
    this.trailing,
    this.showDivider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = _getPresetStyle(context, presetStyle);
    
    return SwitchWidget(
      text: text,
      value: value,
      onChanged: onChanged,
      enabled: enabled,
      onTap: onTap,
      leadingIcon: leadingIcon,
      trailing: trailing,
      showDivider: showDivider,
      textStyle: style['textStyle'],
      activeColor: style['activeColor'],
      inactiveColor: style['inactiveColor'],
      padding: style['padding'],
      backgroundColor: style['backgroundColor'],
      borderRadius: style['borderRadius'],
    );
  }

  Map<String, dynamic> _getPresetStyle(BuildContext context, SwitchPresetStyle style) {
    switch (style) {
      case SwitchPresetStyle.primary:
        return {
          'textStyle': Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          'activeColor': Theme.of(context).primaryColor,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          'backgroundColor': Colors.white,
          'borderRadius': 8.0,
        };
      case SwitchPresetStyle.secondary:
        return {
          'textStyle': Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.grey[600],
          ),
          'activeColor': Colors.blue,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          'backgroundColor': Colors.grey[50],
          'borderRadius': 6.0,
        };
      case SwitchPresetStyle.success:
        return {
          'textStyle': Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.green[700],
          ),
          'activeColor': Colors.green,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          'backgroundColor': Colors.green[50],
          'borderRadius': 8.0,
        };
      case SwitchPresetStyle.warning:
        return {
          'textStyle': Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.orange[700],
          ),
          'activeColor': Colors.orange,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          'backgroundColor': Colors.orange[50],
          'borderRadius': 8.0,
        };
      case SwitchPresetStyle.danger:
        return {
          'textStyle': Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.red[700],
          ),
          'activeColor': Colors.red,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          'backgroundColor': Colors.red[50],
          'borderRadius': 8.0,
        };
      case SwitchPresetStyle.minimal:
        return {
          'textStyle': Theme.of(context).textTheme.bodyLarge,
          'activeColor': Theme.of(context).primaryColor,
          'inactiveColor': Colors.grey[300],
          'padding': const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
          'backgroundColor': Colors.transparent,
          'borderRadius': 0.0,
        };
    }
  }
}

/// 开关预设样式枚举
enum SwitchPresetStyle {
  /// 主要样式
  primary,
  /// 次要样式
  secondary,
  /// 成功样式
  success,
  /// 警告样式
  warning,
  /// 危险样式
  danger,
  /// 极简样式
  minimal,
}
