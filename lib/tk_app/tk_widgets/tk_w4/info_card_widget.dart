import 'package:flutter/material.dart';

/// 信息卡片组件
/// 包含左侧图片、中间文字（主标题和副标题带复制图标）和右侧两个图标（上下排列）
class InfoCardWidget extends StatelessWidget {
  /// 左侧图片路径
  final String? imagePath;
  
  /// 左侧图片 Widget
  final Widget? imageWidget;
  
  /// 图片大小
  final double? imageSize;
  
  /// 图片圆角半径
  final double? imageBorderRadius;
  
  /// 主标题文字
  final String title;
  
  /// 主标题样式
  final TextStyle? titleStyle;
  
  /// 副标题文字
  final String? subtitle;
  
  /// 副标题样式
  final TextStyle? subtitleStyle;
  
  /// 是否显示副标题复制图标
  final bool showCopyIcon;
  
  /// 复制图标
  final Widget? copyIcon;
  
  /// 复制图标大小
  final double? copyIconSize;
  
  /// 复制图标颜色
  final Color? copyIconColor;
  
  /// 复制事件
  final VoidCallback? onCopy;
  
  /// 右上角图标
  final Widget? topRightIcon;
  
  /// 右上角图标大小
  final double? topRightIconSize;
  
  /// 右上角图标颜色
  final Color? topRightIconColor;
  
  /// 右上角图标点击事件
  final VoidCallback? onTopRightIconTap;
  
  /// 右下角图标
  final Widget? bottomRightIcon;
  
  /// 右下角图标大小
  final double? bottomRightIconSize;
  
  /// 右下角图标颜色
  final Color? bottomRightIconColor;
  
  /// 右下角图标点击事件
  final VoidCallback? onBottomRightIconTap;
  
  /// 整个卡片点击事件
  final VoidCallback? onTap;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double? borderWidth;
  
  /// 阴影效果
  final List<BoxShadow>? boxShadow;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 波纹效果颜色
  final Color? rippleColor;
  
  /// 是否启用卡片
  final bool enabled;

  const InfoCardWidget({
    super.key,
    this.imagePath,
    this.imageWidget,
    this.imageSize = 60.0,
    this.imageBorderRadius = 8.0,
    required this.title,
    this.titleStyle,
    this.subtitle,
    this.subtitleStyle,
    this.showCopyIcon = true,
    this.copyIcon,
    this.copyIconSize = 16.0,
    this.copyIconColor,
    this.onCopy,
    this.topRightIcon,
    this.topRightIconSize = 20.0,
    this.topRightIconColor,
    this.onTopRightIconTap,
    this.bottomRightIcon,
    this.bottomRightIconSize = 16.0,
    this.bottomRightIconColor,
    this.onBottomRightIconTap,
    this.onTap,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(16.0),
    this.margin,
    this.height,
    this.borderRadius = 12.0,
    this.borderColor,
    this.borderWidth,
    this.boxShadow,
    this.showRippleEffect = true,
    this.rippleColor,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: Material(
        color: Colors.transparent,
        child: _buildCard(),
      ),
    );
  }

  /// 构建卡片
  Widget _buildCard() {
    final cardContent = Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
        border: _getBorder(),
        boxShadow: boxShadow,
      ),
      child: _buildContent(),
    );

    if (showRippleEffect && enabled) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
        splashColor: rippleColor,
        highlightColor: rippleColor?.withOpacity(0.1),
        child: cardContent,
      );
    } else {
      return GestureDetector(
        onTap: enabled ? onTap : null,
        child: cardContent,
      );
    }
  }

  /// 构建内容
  Widget _buildContent() {
    return Row(
      children: [
        // 左侧图片
        _buildLeftImage(),
        
        const SizedBox(width: 12.0),
        
        // 中间文字区域
        Expanded(
          child: _buildMiddleContent(),
        ),
        
        const SizedBox(width: 12.0),
        
        // 右侧图标区域
        _buildRightIcons(),
      ],
    );
  }

  /// 构建左侧图片
  Widget _buildLeftImage() {
    if (imageWidget != null) {
      return _buildImageContainer(imageWidget!);
    }
    
    if (imagePath != null) {
      return _buildImageContainer(
        Image.asset(
          imagePath!,
          width: imageSize,
          height: imageSize,
          fit: BoxFit.cover,
        ),
      );
    }
    
    // 默认占位图片
    return _buildImageContainer(
      Container(
        width: imageSize,
        height: imageSize,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(imageBorderRadius ?? 8.0),
        ),
        child: const Icon(
          Icons.image,
          color: Colors.grey,
          size: 24.0,
        ),
      ),
    );
  }

  /// 构建图片容器
  Widget _buildImageContainer(Widget child) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(imageBorderRadius ?? 8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imageBorderRadius ?? 8.0),
        child: child,
      ),
    );
  }

  /// 构建中间内容
  Widget _buildMiddleContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 主标题
        Text(
          title,
          style: titleStyle ?? 
            const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        
        if (subtitle != null) ...[
          const SizedBox(height: 4.0),
          // 副标题和复制图标
          Row(
            children: [
              Expanded(
                child: Text(
                  subtitle!,
                  style: subtitleStyle ?? 
                    const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF666666),
                    ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (showCopyIcon) ...[
                const SizedBox(width: 4.0),
                _buildCopyIcon(),
              ],
            ],
          ),
        ],
      ],
    );
  }

  /// 构建复制图标
  Widget _buildCopyIcon() {
    if (copyIcon != null) {
      return GestureDetector(
        onTap: enabled ? onCopy : null,
        child: SizedBox(
          width: copyIconSize,
          height: copyIconSize,
          child: copyIcon,
        ),
      );
    }
    
    return GestureDetector(
      onTap: enabled ? onCopy : null,
      child: Icon(
        Icons.copy,
        size: copyIconSize,
        color: copyIconColor ?? const Color(0xFF999999),
      ),
    );
  }

  /// 构建右侧图标
  Widget _buildRightIcons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 右上角图标
        if (topRightIcon != null)
          GestureDetector(
            onTap: enabled ? onTopRightIconTap : null,
            child: SizedBox(
              width: topRightIconSize,
              height: topRightIconSize,
              child: topRightIcon,
            ),
          )
        else
          GestureDetector(
            onTap: enabled ? onTopRightIconTap : null,
            child: Icon(
              Icons.qr_code,
              size: topRightIconSize,
              color: topRightIconColor ?? const Color(0xFF999999),
            ),
          ),
        
        const SizedBox(height: 8.0),
        
        // 右下角图标
        if (bottomRightIcon != null)
          GestureDetector(
            onTap: enabled ? onBottomRightIconTap : null,
            child: SizedBox(
              width: bottomRightIconSize,
              height: bottomRightIconSize,
              child: bottomRightIcon,
            ),
          )
        else
          GestureDetector(
            onTap: enabled ? onBottomRightIconTap : null,
            child: Icon(
              Icons.chevron_right,
              size: bottomRightIconSize,
              color: bottomRightIconColor ?? const Color(0xFF999999),
            ),
          ),
      ],
    );
  }

  /// 获取边框
  Border? _getBorder() {
    if (borderWidth == null || borderWidth! <= 0) return null;
    
    return Border.all(
      color: borderColor ?? Colors.grey.shade300,
      width: borderWidth!,
    );
  }
}

/// 预设样式的信息卡片组件
class PresetInfoCardWidget extends StatelessWidget {
  /// 左侧图片路径
  final String? imagePath;
  
  /// 左侧图片 Widget
  final Widget? imageWidget;
  
  /// 主标题文字
  final String title;
  
  /// 副标题文字
  final String? subtitle;
  
  /// 卡片类型
  final InfoCardType cardType;
  
  /// 复制事件
  final VoidCallback? onCopy;
  
  /// 右上角图标点击事件
  final VoidCallback? onTopRightIconTap;
  
  /// 右下角图标点击事件
  final VoidCallback? onBottomRightIconTap;
  
  /// 整个卡片点击事件
  final VoidCallback? onTap;
  
  /// 是否启用卡片
  final bool enabled;
  
  /// 是否显示点击波纹效果
  final bool showRippleEffect;
  
  /// 自定义样式
  final InfoCardStyle? style;

  const PresetInfoCardWidget({
    super.key,
    this.imagePath,
    this.imageWidget,
    required this.title,
    this.subtitle,
    this.cardType = InfoCardType.defaultCard,
    this.onCopy,
    this.onTopRightIconTap,
    this.onBottomRightIconTap,
    this.onTap,
    this.enabled = true,
    this.showRippleEffect = true,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCardWidget(
      imagePath: imagePath,
      imageWidget: imageWidget,
      imageSize: style?.imageSize ?? _getImageSize(),
      imageBorderRadius: style?.imageBorderRadius ?? _getImageBorderRadius(),
      title: title,
      titleStyle: style?.titleStyle ?? _getTitleStyle(),
      subtitle: subtitle,
      subtitleStyle: style?.subtitleStyle ?? _getSubtitleStyle(),
      showCopyIcon: style?.showCopyIcon ?? true,
      copyIcon: style?.copyIcon,
      copyIconSize: style?.copyIconSize ?? _getCopyIconSize(),
      copyIconColor: style?.copyIconColor ?? _getCopyIconColor(),
      onCopy: onCopy,
      topRightIcon: style?.topRightIcon ?? _getTopRightIcon(),
      topRightIconSize: style?.topRightIconSize ?? _getTopRightIconSize(),
      topRightIconColor: style?.topRightIconColor ?? _getTopRightIconColor(),
      onTopRightIconTap: onTopRightIconTap,
      bottomRightIcon: style?.bottomRightIcon ?? _getBottomRightIcon(),
      bottomRightIconSize: style?.bottomRightIconSize ?? _getBottomRightIconSize(),
      bottomRightIconColor: style?.bottomRightIconColor ?? _getBottomRightIconColor(),
      onBottomRightIconTap: onBottomRightIconTap,
      onTap: onTap,
      backgroundColor: style?.backgroundColor ?? _getBackgroundColor(),
      padding: style?.padding ?? _getPadding(),
      margin: style?.margin,
      height: style?.height ?? _getHeight(),
      borderRadius: style?.borderRadius ?? _getBorderRadius(),
      borderColor: style?.borderColor,
      borderWidth: style?.borderWidth,
      boxShadow: style?.boxShadow ?? _getBoxShadow(),
      showRippleEffect: showRippleEffect,
      rippleColor: style?.rippleColor,
      enabled: enabled,
    );
  }

  /// 获取图片大小
  double _getImageSize() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 60.0;
      case InfoCardType.compactCard:
        return 50.0;
      case InfoCardType.largeCard:
        return 80.0;
    }
  }

  /// 获取图片圆角半径
  double _getImageBorderRadius() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 8.0;
      case InfoCardType.compactCard:
        return 6.0;
      case InfoCardType.largeCard:
        return 12.0;
    }
  }

  /// 获取主标题样式
  TextStyle _getTitleStyle() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF333333),
        );
      case InfoCardType.compactCard:
        return const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF333333),
        );
      case InfoCardType.largeCard:
        return const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF333333),
        );
    }
  }

  /// 获取副标题样式
  TextStyle _getSubtitleStyle() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return const TextStyle(
          fontSize: 14.0,
          color: Color(0xFF666666),
        );
      case InfoCardType.compactCard:
        return const TextStyle(
          fontSize: 12.0,
          color: Color(0xFF666666),
        );
      case InfoCardType.largeCard:
        return const TextStyle(
          fontSize: 16.0,
          color: Color(0xFF666666),
        );
    }
  }

  /// 获取复制图标大小
  double _getCopyIconSize() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 16.0;
      case InfoCardType.compactCard:
        return 14.0;
      case InfoCardType.largeCard:
        return 18.0;
    }
  }

  /// 获取复制图标颜色
  Color _getCopyIconColor() {
    return const Color(0xFF999999);
  }

  /// 获取右上角图标
  Widget? _getTopRightIcon() {
    return null; // 使用默认图标
  }

  /// 获取右上角图标大小
  double _getTopRightIconSize() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 20.0;
      case InfoCardType.compactCard:
        return 18.0;
      case InfoCardType.largeCard:
        return 24.0;
    }
  }

  /// 获取右上角图标颜色
  Color _getTopRightIconColor() {
    return const Color(0xFF999999);
  }

  /// 获取右下角图标
  Widget? _getBottomRightIcon() {
    return null; // 使用默认图标
  }

  /// 获取右下角图标大小
  double _getBottomRightIconSize() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 16.0;
      case InfoCardType.compactCard:
        return 14.0;
      case InfoCardType.largeCard:
        return 20.0;
    }
  }

  /// 获取右下角图标颜色
  Color _getBottomRightIconColor() {
    return const Color(0xFF999999);
  }

  /// 获取背景颜色
  Color _getBackgroundColor() {
    return const Color(0xFFF5F5F5);
  }

  /// 获取内边距
  EdgeInsetsGeometry _getPadding() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return const EdgeInsets.all(16.0);
      case InfoCardType.compactCard:
        return const EdgeInsets.all(12.0);
      case InfoCardType.largeCard:
        return const EdgeInsets.all(20.0);
    }
  }

  /// 获取高度
  double? _getHeight() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return null;
      case InfoCardType.compactCard:
        return 80.0;
      case InfoCardType.largeCard:
        return 120.0;
    }
  }

  /// 获取圆角半径
  double _getBorderRadius() {
    switch (cardType) {
      case InfoCardType.defaultCard:
        return 12.0;
      case InfoCardType.compactCard:
        return 8.0;
      case InfoCardType.largeCard:
        return 16.0;
    }
  }

  /// 获取阴影效果
  List<BoxShadow>? _getBoxShadow() {
    return null;
  }
}

/// 信息卡片类型枚举
enum InfoCardType {
  defaultCard,  // 默认卡片
  compactCard,  // 紧凑卡片
  largeCard,    // 大卡片
}

/// 信息卡片样式配置
class InfoCardStyle {
  /// 图片大小
  final double? imageSize;
  
  /// 图片圆角半径
  final double? imageBorderRadius;
  
  /// 主标题样式
  final TextStyle? titleStyle;
  
  /// 副标题样式
  final TextStyle? subtitleStyle;
  
  /// 是否显示复制图标
  final bool? showCopyIcon;
  
  /// 复制图标
  final Widget? copyIcon;
  
  /// 复制图标大小
  final double? copyIconSize;
  
  /// 复制图标颜色
  final Color? copyIconColor;
  
  /// 右上角图标
  final Widget? topRightIcon;
  
  /// 右上角图标大小
  final double? topRightIconSize;
  
  /// 右上角图标颜色
  final Color? topRightIconColor;
  
  /// 右下角图标
  final Widget? bottomRightIcon;
  
  /// 右下角图标大小
  final double? bottomRightIconSize;
  
  /// 右下角图标颜色
  final Color? bottomRightIconColor;
  
  /// 背景颜色
  final Color? backgroundColor;
  
  /// 内边距
  final EdgeInsetsGeometry? padding;
  
  /// 外边距
  final EdgeInsetsGeometry? margin;
  
  /// 高度
  final double? height;
  
  /// 圆角半径
  final double? borderRadius;
  
  /// 边框颜色
  final Color? borderColor;
  
  /// 边框宽度
  final double? borderWidth;
  
  /// 阴影效果
  final List<BoxShadow>? boxShadow;
  
  /// 波纹效果颜色
  final Color? rippleColor;

  const InfoCardStyle({
    this.imageSize,
    this.imageBorderRadius,
    this.titleStyle,
    this.subtitleStyle,
    this.showCopyIcon,
    this.copyIcon,
    this.copyIconSize,
    this.copyIconColor,
    this.topRightIcon,
    this.topRightIconSize,
    this.topRightIconColor,
    this.bottomRightIcon,
    this.bottomRightIconSize,
    this.bottomRightIconColor,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.height,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.boxShadow,
    this.rippleColor,
  });
}
