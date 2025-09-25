import 'package:flutter/material.dart';
import 'crypto_info_data.dart';

/// 加密货币信息卡片组件
/// 包含6个框的布局：第一排（交易对、时间），第二排（价格、眼睛图标），第三排（级别、状态）
class CryptoInfoWidget extends StatelessWidget {
  /// 数据
  final CryptoInfoData data;
  
  /// 样式配置
  final CryptoInfoStyle style;
  
  /// 点击回调
  final VoidCallback? onTap;

  const CryptoInfoWidget({
    super.key,
    required this.data,
    this.style = const CryptoInfoStyle(),
    this.onTap,
  });

  /// 使用默认数据和样式的构造函数
  const CryptoInfoWidget.defaultStyle({
    super.key,
    this.data = CryptoInfoData.defaultData,
    this.onTap,
  }) : style = const CryptoInfoStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: style.width,
      height: style.height,
      margin: style.margin,
      child: Material(
        color: style.backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(style.borderRadius ?? 12.0),
        elevation: 0,
        shadowColor: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(style.borderRadius ?? 12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(style.borderRadius ?? 12.0),
              border: style.borderColor != null
                  ? Border.all(
                      color: style.borderColor!,
                      width: style.borderWidth ?? 1.0,
                    )
                  : null,
              boxShadow: style.boxShadow,
            ),
            padding: EdgeInsets.zero, // 移除内边距
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                // 顶部间距
                SizedBox(height: 8.0),
                // 第一排：交易对和时间
                Expanded(
                  child: Row(
                    children: [
                      // 交易对框（左边）- 贴边
                      _buildTradingPairBox(),
                      SizedBox(width: style.horizontalSpacing ?? 8.0),
                      // 时间框（右边）
                      Expanded(
                        child: _buildTimeBox(),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: style.verticalSpacing ?? 8.0),
                
                // 第二排：价格和眼睛图标
                Expanded(
                  child: Row(
                    children: [
                      // 价格框（左边）
                      Expanded(
                        child: _buildPriceBox(),
                      ),
                      SizedBox(width: style.horizontalSpacing ?? 8.0),
                      // 眼睛图标框（右边）
                      Expanded(
                        child: _buildEyeBox(),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: style.verticalSpacing ?? 8.0),
                
                // 第三排：级别和状态
                Expanded(
                  child: Row(
                    children: [
                      // 级别框（左边）
                      Expanded(
                        child: _buildLevelBox(),
                      ),
                      SizedBox(width: style.horizontalSpacing ?? 8.0),
                      // 状态框（右边）
                      Expanded(
                        child: _buildStatusBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 构建交易对框
  Widget _buildTradingPairBox() {
    return Container(
      width: (style.width ?? 200.0) * 0.5, // 占一半宽度
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: style.tradingPairBackgroundColor ?? const Color(0xFF6A0DAD),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0), // 左边直角
          topRight: Radius.circular(12.0), // 右边圆角
          bottomLeft: Radius.circular(0), // 左边直角
          bottomRight: Radius.circular(12.0), // 右边圆角
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft, // 强制左对齐
        child: Text(
          data.tradingPair,
          style: style.tradingPairTextStyle ?? const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left, // 左对齐
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  /// 构建时间框
  Widget _buildTimeBox() {
    return Container(
      padding: style.timePadding ?? const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: style.timeBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(style.timeBorderRadius ?? 6.0),
      ),
      child: Text(
        data.timeText,
        style: style.timeTextStyle ?? TextStyle(
          color: Colors.grey.shade600,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  /// 构建价格框
  Widget _buildPriceBox() {
    return Container(
      padding: style.pricePadding ?? const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: style.priceBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(style.priceBorderRadius ?? 6.0),
      ),
      child: Text(
        data.priceText,
        style: style.priceTextStyle ?? const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  /// 构建眼睛图标框
  Widget _buildEyeBox() {
    return Container(
      padding: style.eyePadding ?? const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: style.eyeBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(style.eyeBorderRadius ?? 6.0),
      ),
      child: Align(
        alignment: Alignment.centerRight, // 靠右对齐
        child: data.eyeIcon ?? Icon(
          Icons.visibility_outlined,
          size: style.eyeIconSize ?? 16.0,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }

  /// 构建级别框
  Widget _buildLevelBox() {
    return Container(
      padding: style.levelPadding ?? const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      child: Text(
        data.levelText,
        style: style.levelTextStyle ?? const TextStyle(
          color: Colors.black,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  /// 构建状态框
  Widget _buildStatusBox() {
    return Container(
      padding: style.statusPadding ?? const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: style.statusBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(style.statusBorderRadius ?? 6.0),
      ),
      child: Text(
        data.statusText,
        style: style.statusTextStyle ?? TextStyle(
          color: Colors.grey.shade600,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.right, // 右对齐
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

/// 加密货币信息卡片配置类
/// 用于快速创建和配置组件
class CryptoInfoConfig {
  /// 应用配置到组件
  static CryptoInfoWidget create({
    CryptoInfoData? data,
    CryptoInfoStyle? style,
    VoidCallback? onTap,
  }) {
    return CryptoInfoWidget(
      data: data ?? CryptoInfoData.defaultData,
      style: style ?? CryptoInfoStyle.defaultStyle(),
      onTap: onTap,
    );
  }

  /// 创建深色主题的组件
  static CryptoInfoWidget createDarkTheme({
    CryptoInfoData? data,
    VoidCallback? onTap,
  }) {
    final darkStyle = CryptoInfoStyle.defaultStyle().copyWith(
      backgroundColor: const Color(0xFF1E1E1E),
      borderColor: const Color(0xFF333333),
      tradingPairBackgroundColor: const Color(0xFF4A148C),
      timeBackgroundColor: const Color(0xFF2D2D2D),
      timeTextStyle: const TextStyle(
        color: Colors.white70,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
      priceBackgroundColor: const Color(0xFF2D2D2D),
      priceTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      eyeBackgroundColor: const Color(0xFF2D2D2D),
      levelBackgroundColor: const Color(0xFF2D2D2D),
      levelTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
      statusBackgroundColor: const Color(0xFF2D2D2D),
      statusTextStyle: const TextStyle(
        color: Colors.white70,
        fontSize: 11.0,
        fontWeight: FontWeight.w500,
      ),
    );

    return CryptoInfoWidget(
      data: data ?? CryptoInfoData.defaultData,
      style: darkStyle,
      onTap: onTap,
    );
  }

  /// 创建紧凑样式的组件
  static CryptoInfoWidget createCompact({
    CryptoInfoData? data,
    VoidCallback? onTap,
  }) {
    final compactStyle = CryptoInfoStyle.defaultStyle().copyWith(
      width: 160.0,
      height: 100.0,
      padding: const EdgeInsets.all(8.0),
      horizontalSpacing: 6.0,
      verticalSpacing: 6.0,
      tradingPairTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 10.0,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 9.0,
        fontWeight: FontWeight.w500,
      ),
      priceTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
      levelTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 9.0,
        fontWeight: FontWeight.w500,
      ),
      statusTextStyle: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 9.0,
        fontWeight: FontWeight.w500,
      ),
    );

    return CryptoInfoWidget(
      data: data ?? CryptoInfoData.defaultData,
      style: compactStyle,
      onTap: onTap,
    );
  }
}