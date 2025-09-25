import 'package:flutter/material.dart';

/// 可复用的列表项组件
/// 包含左侧图标、中间文字和右侧箭头图标
class ListItemWidget extends StatelessWidget {
  /// 左侧图标
  final Widget? leftIcon;
  
  /// 左侧图标路径（如果使用图片）
  final String? leftIconPath;
  
  /// 左侧图标大小
  final double? leftIconSize;
  
  /// 中间文字内容
  final String text;
  
  /// 文字样式
  final TextStyle? textStyle;
  
  /// 右侧图标
  final Widget? rightIcon;
  
  /// 右侧图标路径（如果使用图片）
  final String? rightIconPath;
  
  /// 右侧图标大小
  final double? rightIconSize;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
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
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;

  const ListItemWidget({
    super.key,
    this.leftIcon,
    this.leftIconPath,
    this.leftIconSize = 24.0,
    required this.text,
    this.textStyle,
    this.rightIcon,
    this.rightIconPath,
    this.rightIconSize = 16.0,
    this.onTap,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.margin,
    this.height,
    this.showDivider = false,
    this.dividerColor,
    this.dividerHeight = 0.5,
    this.dividerLeftMargin = 16.0,
    this.dividerRightMargin = 0.0,
    this.showRippleEffect = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          Container(
            height: height,
            padding: padding,
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
            ),
            child: Material(
              color: Colors.transparent,
              child: showRippleEffect 
                ? InkWell(
                    onTap: onTap,
                    child: _buildContent(),
                  )
                : GestureDetector(
                    onTap: onTap,
                    child: _buildContent(),
                  ),
            ),
          ),
          
          // 分割线
          if (showDivider)
            Container(
              height: dividerHeight,
              margin: EdgeInsets.only(
                left: dividerLeftMargin ?? 0.0,
                right: dividerRightMargin ?? 0.0,
              ),
              color: dividerColor ?? const Color(0xFFE5E5E5),
            ),
        ],
      ),
    );
  }

  /// 构建内容区域
  Widget _buildContent() {
    return Row(
      children: [
        // 左侧图标
        _buildLeftIcon(),
        
        // 中间文字
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              text,
              style: textStyle ?? 
                const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.normal,
                ),
            ),
          ),
        ),
        
        // 右侧图标
        _buildRightIcon(),
      ],
    );
  }

  /// 构建左侧图标
  Widget _buildLeftIcon() {
    if (leftIcon != null) {
      return SizedBox(
        width: leftIconSize,
        height: leftIconSize,
        child: leftIcon,
      );
    }
    
    if (leftIconPath != null) {
      return SizedBox(
        width: leftIconSize,
        height: leftIconSize,
        child: Image.asset(
          leftIconPath!,
          width: leftIconSize,
          height: leftIconSize,
          fit: BoxFit.contain,
        ),
      );
    }
    
    return const SizedBox.shrink();
  }

  /// 构建右侧图标
  Widget _buildRightIcon() {
    if (rightIcon != null) {
      return SizedBox(
        width: rightIconSize,
        height: rightIconSize,
        child: rightIcon,
      );
    }
    
    if (rightIconPath != null) {
      return SizedBox(
        width: rightIconSize,
        height: rightIconSize,
        child: Image.asset(
          rightIconPath!,
          width: rightIconSize,
          height: rightIconSize,
          fit: BoxFit.contain,
        ),
      );
    }
    
    // 默认右侧箭头图标
    return Icon(
      Icons.chevron_right,
      size: rightIconSize,
      color: const Color(0xFF999999),
    );
  }
}

/// 图标类型枚举
enum ListItemIconType {
  wallet,
  payment,
  settings,
  user,
  message,
  phone,
  email,
  location,
  calendar,
  star,
}

/// 预设样式的列表项组件
class PresetListItemWidget extends StatelessWidget {

  /// 图标类型
  final ListItemIconType iconType;
  
  /// 文字内容
  final String text;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 是否显示分割线
  final bool showDivider;
  
  /// 自定义图标颜色
  final Color? iconColor;
  
  /// 自定义文字颜色
  final Color? textColor;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;

  const PresetListItemWidget({
    super.key,
    required this.iconType,
    required this.text,
    this.onTap,
    this.showDivider = false,
    this.iconColor,
    this.textColor,
    this.showRippleEffect = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListItemWidget(
      leftIcon: _getPresetIcon(),
      text: text,
      onTap: onTap,
      showDivider: showDivider,
      showRippleEffect: showRippleEffect,
      textStyle: TextStyle(
        fontSize: 16.0,
        color: textColor ?? const Color(0xFF333333),
        fontWeight: FontWeight.normal,
      ),
    );
  }

  /// 获取预设图标
  Widget _getPresetIcon() {
    final color = iconColor ?? const Color(0xFF4CAF50);
    
    switch (iconType) {
      case ListItemIconType.wallet:
        return _buildWalletIcon(color);
      case ListItemIconType.payment:
        return _buildPaymentIcon(color);
      case ListItemIconType.settings:
        return Icon(Icons.settings, color: color, size: 24.0);
      case ListItemIconType.user:
        return Icon(Icons.person, color: color, size: 24.0);
      case ListItemIconType.message:
        return Icon(Icons.message, color: color, size: 24.0);
      case ListItemIconType.phone:
        return Icon(Icons.phone, color: color, size: 24.0);
      case ListItemIconType.email:
        return Icon(Icons.email, color: color, size: 24.0);
      case ListItemIconType.location:
        return Icon(Icons.location_on, color: color, size: 24.0);
      case ListItemIconType.calendar:
        return Icon(Icons.calendar_today, color: color, size: 24.0);
      case ListItemIconType.star:
        return Icon(Icons.star, color: color, size: 24.0);
    }
  }

  /// 构建钱包图标
  Widget _buildWalletIcon(Color color) {
    return CustomPaint(
      size: const Size(24.0, 24.0),
      painter: WalletIconPainter(color),
    );
  }

  /// 构建支付图标
  Widget _buildPaymentIcon(Color color) {
    return CustomPaint(
      size: const Size(24.0, 24.0),
      painter: PaymentIconPainter(color),
    );
  }
}

/// 钱包图标绘制器
class WalletIconPainter extends CustomPainter {
  final Color color;

  WalletIconPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    
    // 绘制钱包主体
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(2, 6, size.width - 4, size.height - 10),
      const Radius.circular(4),
    ));
    
    // 绘制钱包顶部小袋
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(size.width - 8, 2, 6, 8),
      const Radius.circular(2),
    ));
    
    // 绘制小袋中的圆点
    canvas.drawCircle(
      Offset(size.width - 5, 6),
      1.5,
      paint..style = PaintingStyle.fill,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// 支付图标绘制器
class PaymentIconPainter extends CustomPainter {
  final Color color;

  PaymentIconPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // 绘制信用卡形状
    final path = Path();
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(2, 4, size.width - 4, size.height - 8),
      const Radius.circular(4),
    ));
    
    // 绘制磁条
    canvas.drawLine(
      Offset(4, size.height * 0.6),
      Offset(size.width - 4, size.height * 0.6),
      paint,
    );
    
    // 绘制芯片
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(6, size.height * 0.3, 8, 6),
        const Radius.circular(1),
      ),
      paint,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}