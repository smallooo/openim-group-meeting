import 'package:flutter/material.dart';
import 'strategy_card_data.dart';

/// 策略卡片组件
/// 
/// 一个高度可定制的策略卡片，包含标题、图标和数量显示
/// 支持完全自定义样式和交互
class StrategyCardWidget extends StatelessWidget {
  /// 卡片数据
  final StrategyCardData data;
  
  /// 卡片内边距
  final EdgeInsets padding;
  
  /// 卡片外边距
  final EdgeInsets margin;
  
  /// 卡片圆角半径
  final double borderRadius;
  
  /// 卡片边框颜色
  final Color? borderColor;
  
  /// 卡片边框宽度
  final double borderWidth;
  
  /// 卡片背景色
  final Color? backgroundColor;
  
  /// 卡片阴影
  final List<BoxShadow>? boxShadow;
  
  /// 标题文本样式
  final TextStyle? titleTextStyle;
  
  /// 图标尺寸
  final double iconSize;
  
  /// 图标颜色
  final Color? iconColor;
  
  /// 图标背景色
  final Color? iconBackgroundColor;
  
  /// 图标圆角半径
  final double iconBorderRadius;
  
  /// 数量文本样式
  final TextStyle? countTextStyle;
  
  /// 数量背景色
  final Color? countBackgroundColor;
  
  /// 数量圆角半径
  final double countBorderRadius;
  
  /// 卡片点击回调
  final VoidCallback? onTap;
  
  /// 图标点击回调
  final VoidCallback? onIconTap;
  
  /// 数量点击回调
  final VoidCallback? onCountTap;

  const StrategyCardWidget({
    super.key,
    required this.data,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = EdgeInsets.zero,
    this.borderRadius = 12.0,
    this.borderColor,
    this.borderWidth = 1.0,
    this.backgroundColor,
    this.boxShadow,
    this.titleTextStyle,
    this.iconSize = 24.0,
    this.iconColor,
    this.iconBackgroundColor,
    this.iconBorderRadius = 8.0,
    this.countTextStyle,
    this.countBackgroundColor,
    this.countBorderRadius = 8.0,
    this.onTap,
    this.onIconTap,
    this.onCountTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? _parseColor(data.backgroundColor) ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          border: data.showBorder ? Border.all(
            color: borderColor ?? Colors.red,
            width: borderWidth,
          ) : null,
          boxShadow: boxShadow ?? [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 标题区域
              _buildTitle(),
              const SizedBox(height: 16),
              // 图标和数量区域
              _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  /// 构建标题区域
  Widget _buildTitle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red, width: 1),
      ),
      child: Text(
        data.title,
        style: titleTextStyle ?? TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: _parseColor(data.titleTextColor) ?? Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// 构建内容区域（图标和数量）
  Widget _buildContent() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red, width: 1),
      ),
      child: Column(
        children: [
          // 图标区域
          _buildIcon(),
          const SizedBox(height: 12),
          // 数量区域
          _buildCount(),
        ],
      ),
    );
  }

  /// 构建图标区域
  Widget _buildIcon() {
    return GestureDetector(
      onTap: onIconTap,
      child: Container(
        width: iconSize + 16,
        height: iconSize + 16,
        decoration: BoxDecoration(
          color: iconBackgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(iconBorderRadius),
          border: Border.all(color: Colors.red, width: 1),
        ),
        child: Center(
          child: _buildIconWidget(),
        ),
      ),
    );
  }

  /// 构建图标组件
  Widget _buildIconWidget() {
    final iconColor = this.iconColor ?? _parseColor(data.iconColor) ?? Colors.green;
    
    // 如果是网络图片URL
    if (data.icon.startsWith('http')) {
      return Image.network(
        data.icon,
        width: iconSize,
        height: iconSize,
        color: iconColor,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.lightbulb,
            size: iconSize,
            color: iconColor,
          );
        },
      );
    }
    
    // 如果是本地图片路径
    if (data.icon.contains('/') && !data.icon.startsWith('http')) {
      return Image.asset(
        data.icon,
        width: iconSize,
        height: iconSize,
        color: iconColor,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.lightbulb,
            size: iconSize,
            color: iconColor,
          );
        },
      );
    }
    
    // 如果是Material Icons名称
    IconData iconData;
    switch (data.icon.toLowerCase()) {
      case 'lightbulb':
        iconData = Icons.lightbulb;
        break;
      case 'strategy':
        iconData = Icons.trending_up;
        break;
      case 'chart':
        iconData = Icons.bar_chart;
        break;
      case 'analytics':
        iconData = Icons.analytics;
        break;
      case 'settings':
        iconData = Icons.settings;
        break;
      case 'star':
        iconData = Icons.star;
        break;
      case 'favorite':
        iconData = Icons.favorite;
        break;
      case 'bookmark':
        iconData = Icons.bookmark;
        break;
      default:
        iconData = Icons.lightbulb;
    }
    
    return Icon(
      iconData,
      size: iconSize,
      color: iconColor,
    );
  }

  /// 构建数量区域
  Widget _buildCount() {
    return GestureDetector(
      onTap: onCountTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: countBackgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(countBorderRadius),
          border: Border.all(color: Colors.red, width: 1),
        ),
        child: Text(
          data.count.toString(),
          style: countTextStyle ?? TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: _parseColor(data.countTextColor) ?? Colors.purple,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  /// 解析颜色字符串
  Color? _parseColor(String? colorString) {
    if (colorString == null || colorString.isEmpty) return null;
    
    // 移除#号
    String cleanColor = colorString.replaceAll('#', '');
    
    // 确保是6位十六进制
    if (cleanColor.length == 3) {
      cleanColor = cleanColor.split('').map((char) => char + char).join();
    }
    
    if (cleanColor.length == 6) {
      try {
        return Color(int.parse('FF$cleanColor', radix: 16));
      } catch (e) {
        return null;
      }
    }
    
    return null;
  }
}
