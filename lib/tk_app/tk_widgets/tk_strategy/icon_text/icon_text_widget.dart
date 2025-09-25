import 'package:flutter/material.dart';

/// 图标文字组件
/// 左边是图标，右边是文字（如果文字长，始终单行显示，不能右边溢出）
/// 支持完全自定义，组件化开发，提高复用，解耦，好维护，易用
class IconTextWidget extends StatelessWidget {
  /// 左侧图标
  final Widget? leftIcon;
  
  /// 左侧图标路径（如果使用图片）
  final String? leftIconPath;
  
  /// 左侧图标大小
  final double? leftIconSize;
  
  /// 文字内容
  final String text;
  
  /// 文字样式
  final TextStyle? textStyle;
  
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
  
  /// 图标和文字之间的间距
  final double? iconTextSpacing;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 边框
  final Border? border;
  
  /// 阴影
  final List<BoxShadow>? boxShadow;
  
  /// 文字对齐方式
  final TextAlign textAlign;
  
  /// 文字溢出处理方式
  final TextOverflow textOverflow;
  
  /// 最大行数（始终为1，但保留参数以便扩展）
  final int maxLines;
  
  /// 是否启用文字选择
  final bool enableTextSelection;
  
  /// 文字选择样式
  final TextStyle? selectionStyle;

  const IconTextWidget({
    super.key,
    this.leftIcon,
    this.leftIconPath,
    this.leftIconSize = 24.0,
    required this.text,
    this.textStyle,
    this.onTap,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.margin,
    this.height,
    this.iconTextSpacing = 12.0,
    this.showRippleEffect = true,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.textAlign = TextAlign.start,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.enableTextSelection = false,
    this.selectionStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Container(
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
          border: border,
          boxShadow: boxShadow,
        ),
        child: Material(
          color: Colors.transparent,
          child: showRippleEffect 
            ? InkWell(
                onTap: onTap,
                borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
                child: _buildContent(),
              )
            : GestureDetector(
                onTap: onTap,
                child: _buildContent(),
              ),
        ),
      ),
    );
  }

  /// 构建内容区域
  Widget _buildContent() {
    return Row(
      children: [
        // 左侧图标
        _buildLeftIcon(),
        
        // 图标和文字之间的间距
        SizedBox(width: iconTextSpacing),
        
        // 右侧文字
        Expanded(
          child: _buildText(),
        ),
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

  /// 构建文字
  Widget _buildText() {
    final textWidget = Text(
      text,
      style: textStyle ?? 
        const TextStyle(
          fontSize: 16.0,
          color: Color(0xFF333333),
          fontWeight: FontWeight.normal,
        ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );

    if (enableTextSelection) {
      return SelectableText(
        text,
        style: textStyle ?? 
          const TextStyle(
            fontSize: 16.0,
            color: Color(0xFF333333),
            fontWeight: FontWeight.normal,
          ),
        textAlign: textAlign,
      );
    }

    return textWidget;
  }
}

/// 预设样式的图标文字组件
class PresetIconTextWidget extends StatelessWidget {
  /// 图标类型
  final IconTextIconType iconType;
  
  /// 文字内容
  final String text;
  
  /// 点击事件
  final VoidCallback? onTap;
  
  /// 自定义图标颜色
  final Color? iconColor;
  
  /// 自定义文字颜色
  final Color? textColor;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
  /// 图标和文字之间的间距
  final double? iconTextSpacing;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 边框
  final Border? border;
  
  /// 阴影
  final List<BoxShadow>? boxShadow;

  const PresetIconTextWidget({
    super.key,
    required this.iconType,
    required this.text,
    this.onTap,
    this.iconColor,
    this.textColor,
    this.showRippleEffect = true,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.margin,
    this.height,
    this.iconTextSpacing = 12.0,
    this.borderRadius,
    this.border,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return IconTextWidget(
      leftIcon: _getPresetIcon(),
      text: text,
      onTap: onTap,
      showRippleEffect: showRippleEffect,
      backgroundColor: backgroundColor,
      padding: padding,
      margin: margin,
      height: height,
      iconTextSpacing: iconTextSpacing,
      borderRadius: borderRadius,
      border: border,
      boxShadow: boxShadow,
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
      case IconTextIconType.notification:
        return _buildNotificationIcon(color);
      case IconTextIconType.subscription:
        return _buildSubscriptionIcon(color);
      case IconTextIconType.message:
        return Icon(Icons.message, color: color, size: 24.0);
      case IconTextIconType.settings:
        return Icon(Icons.settings, color: color, size: 24.0);
      case IconTextIconType.user:
        return Icon(Icons.person, color: color, size: 24.0);
      case IconTextIconType.phone:
        return Icon(Icons.phone, color: color, size: 24.0);
      case IconTextIconType.email:
        return Icon(Icons.email, color: color, size: 24.0);
      case IconTextIconType.location:
        return Icon(Icons.location_on, color: color, size: 24.0);
      case IconTextIconType.calendar:
        return Icon(Icons.calendar_today, color: color, size: 24.0);
      case IconTextIconType.star:
        return Icon(Icons.star, color: color, size: 24.0);
      case IconTextIconType.wallet:
        return Icon(Icons.account_balance_wallet, color: color, size: 24.0);
      case IconTextIconType.payment:
        return Icon(Icons.payment, color: color, size: 24.0);
      case IconTextIconType.home:
        return Icon(Icons.home, color: color, size: 24.0);
      case IconTextIconType.search:
        return Icon(Icons.search, color: color, size: 24.0);
      case IconTextIconType.favorite:
        return Icon(Icons.favorite, color: color, size: 24.0);
      case IconTextIconType.info:
        return Icon(Icons.info, color: color, size: 24.0);
      case IconTextIconType.warning:
        return Icon(Icons.warning, color: color, size: 24.0);
      case IconTextIconType.error:
        return Icon(Icons.error, color: color, size: 24.0);
      case IconTextIconType.success:
        return Icon(Icons.check_circle, color: color, size: 24.0);
    }
  }

  /// 构建通知图标（类似截图中的扬声器图标）
  Widget _buildNotificationIcon(Color color) {
    return CustomPaint(
      size: const Size(24.0, 24.0),
      painter: NotificationIconPainter(color),
    );
  }

  /// 构建订阅图标
  Widget _buildSubscriptionIcon(Color color) {
    return CustomPaint(
      size: const Size(24.0, 24.0),
      painter: SubscriptionIconPainter(color),
    );
  }
}

/// 图标类型枚举
enum IconTextIconType {
  notification,    // 通知图标（扬声器）
  subscription,    // 订阅图标
  message,         // 消息图标
  settings,        // 设置图标
  user,            // 用户图标
  phone,           // 电话图标
  email,           // 邮件图标
  location,        // 位置图标
  calendar,        // 日历图标
  star,            // 星标图标
  wallet,          // 钱包图标
  payment,         // 支付图标
  home,            // 首页图标
  search,          // 搜索图标
  favorite,        // 喜欢图标
  info,            // 信息图标
  warning,         // 警告图标
  error,           // 错误图标
  success,         // 成功图标
}

/// 通知图标绘制器（扬声器图标）
class NotificationIconPainter extends CustomPainter {
  final Color color;

  NotificationIconPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // 绘制扬声器主体
    final speakerPath = Path();
    speakerPath.moveTo(6, 8);
    speakerPath.lineTo(6, 16);
    speakerPath.lineTo(10, 16);
    speakerPath.lineTo(16, 20);
    speakerPath.lineTo(16, 4);
    speakerPath.lineTo(10, 8);
    speakerPath.close();
    
    canvas.drawPath(speakerPath, fillPaint);

    // 绘制声波线条
    final wavePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // 第一条声波
    canvas.drawArc(
      Rect.fromCircle(center: const Offset(18, 12), radius: 4),
      -1.57, // -90度
      3.14,  // 180度
      false,
      wavePaint,
    );

    // 第二条声波
    canvas.drawArc(
      Rect.fromCircle(center: const Offset(18, 12), radius: 8),
      -1.57, // -90度
      3.14,  // 180度
      false,
      wavePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// 订阅图标绘制器
class SubscriptionIconPainter extends CustomPainter {
  final Color color;

  SubscriptionIconPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // 绘制心形图标
    final heartPath = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    
    heartPath.moveTo(centerX, centerY + 3);
    heartPath.cubicTo(
      centerX - 6, centerY - 2,
      centerX - 10, centerY + 2,
      centerX - 10, centerY + 6,
    );
    heartPath.cubicTo(
      centerX - 10, centerY + 10,
      centerX - 6, centerY + 12,
      centerX, centerY + 16,
    );
    heartPath.cubicTo(
      centerX + 6, centerY + 12,
      centerX + 10, centerY + 10,
      centerX + 10, centerY + 6,
    );
    heartPath.cubicTo(
      centerX + 10, centerY + 2,
      centerX + 6, centerY - 2,
      centerX, centerY + 3,
    );
    
    canvas.drawPath(heartPath, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
