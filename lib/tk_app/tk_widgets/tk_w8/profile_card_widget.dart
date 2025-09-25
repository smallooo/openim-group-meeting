import 'package:flutter/material.dart';
import 'profile_card_data.dart';

/// 用户资料卡片组件
/// 
/// 一个高度可定制的用户资料卡片，包含头像、姓名、职位、关注数、
/// 标签选择、统计数据和详情按钮等功能
class ProfileCardWidget extends StatelessWidget {
  /// 卡片数据
  final ProfileCardData data;
  
  /// 卡片内边距
  final EdgeInsets padding;
  
  /// 卡片外边距
  final EdgeInsets margin;
  
  /// 卡片圆角半径
  final double borderRadius;
  
  /// 卡片边框
  final Border? border;
  
  /// 卡片背景色
  final Color? backgroundColor;
  
  /// 卡片阴影
  final List<BoxShadow>? boxShadow;
  
  /// 头像尺寸
  final double avatarSize;
  
  /// 头像圆角半径
  final double avatarBorderRadius;
  
  /// 姓名文本样式
  final TextStyle? nameTextStyle;
  
  /// 职位文本样式
  final TextStyle? titleTextStyle;
  
  /// 关注数文本样式
  final TextStyle? followCountTextStyle;
  
  /// 标签文本样式
  final TextStyle? tagTextStyle;
  
  /// 选中标签的背景色
  final Color? selectedTagBackgroundColor;
  
  /// 未选中标签的背景色
  final Color? unselectedTagBackgroundColor;
  
  /// 选中标签的文字颜色
  final Color? selectedTagTextColor;
  
  /// 未选中标签的文字颜色
  final Color? unselectedTagTextColor;
  
  /// 统计标题文本样式
  final TextStyle? statisticTitleTextStyle;
  
  /// 统计数值文本样式
  final TextStyle? statisticValueTextStyle;
  
  /// 详情按钮样式
  final ButtonStyle? detailButtonStyle;
  
  /// 关注按钮点击回调
  final VoidCallback? onFollowTap;
  
  /// 标签点击回调
  final ValueChanged<int>? onTagTap;
  
  /// 详情按钮点击回调
  final VoidCallback? onDetailTap;
  
  /// 头像点击回调
  final VoidCallback? onAvatarTap;

  const ProfileCardWidget({
    super.key,
    required this.data,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = EdgeInsets.zero,
    this.borderRadius = 12.0,
    this.border,
    this.backgroundColor = Colors.white,
    this.boxShadow,
    this.avatarSize = 60.0,
    this.avatarBorderRadius = 30.0,
    this.nameTextStyle,
    this.titleTextStyle,
    this.followCountTextStyle,
    this.tagTextStyle,
    this.selectedTagBackgroundColor,
    this.unselectedTagBackgroundColor,
    this.selectedTagTextColor,
    this.unselectedTagTextColor,
    this.statisticTitleTextStyle,
    this.statisticValueTextStyle,
    this.detailButtonStyle,
    this.onFollowTap,
    this.onTagTap,
    this.onDetailTap,
    this.onAvatarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
        boxShadow: boxShadow ?? [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 16),
            _buildTags(),
            const SizedBox(height: 16),
            _buildStatistics(),
          ],
        ),
      ),
    );
  }

  /// 构建头部区域（头像、姓名、职位、关注数、详情按钮）
  Widget _buildHeader() {
    return Row(
      children: [
        // 头像
        GestureDetector(
          onTap: onAvatarTap,
          child: Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(avatarBorderRadius),
              color: Colors.grey[300], // 添加背景色
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(avatarBorderRadius),
              child: Image.network(
                data.avatarUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // 图片加载失败时显示默认头像
                  return Container(
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.person,
                      size: avatarSize * 0.6,
                      color: Colors.grey[600],
                    ),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  // 显示加载指示器
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: SizedBox(
                        width: avatarSize * 0.4,
                        height: avatarSize * 0.4,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[600]!),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // 姓名和职位
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2, // 给标题更多空间
                    child: Text(
                      data.title,
                      style: titleTextStyle ?? const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    flex: 1, // 给姓名较少空间
                    child: Text(
                      data.name,
                      style: nameTextStyle ?? const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // 关注按钮和数量
              Row(
                children: [
                  GestureDetector(
                    onTap: onFollowTap,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    data.followCount.toString(),
                    style: followCountTextStyle ?? const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // 详情按钮回到右侧，添加右边距
        Padding(
          padding: const EdgeInsets.only(left: 12.0), // 增加左边距
          child: Flexible(
            child: ElevatedButton(
              onPressed: onDetailTap,
              style: detailButtonStyle ?? ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                minimumSize: const Size(36, 22),
                maximumSize: const Size(55, 28),
              ),
              child: Text(
                data.detailButtonText,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// 构建标签区域
  Widget _buildTags() {
    return Row(
      children: data.tags.asMap().entries.map((entry) {
        final index = entry.key;
        final tag = entry.value;
        final isSelected = index == data.selectedTagIndex;
        
        return Padding(
          padding: EdgeInsets.only(right: index < data.tags.length - 1 ? 8 : 0),
          child: GestureDetector(
            onTap: () => onTagTap?.call(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: isSelected 
                    ? (selectedTagBackgroundColor ?? Colors.purple.withOpacity(0.1))
                    : (unselectedTagBackgroundColor ?? Colors.grey.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                tag,
                style: tagTextStyle ?? TextStyle(
                  fontSize: 12,
                  color: isSelected 
                      ? (selectedTagTextColor ?? Colors.purple)
                      : (unselectedTagTextColor ?? Colors.grey[600]),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  /// 构建统计区域
  Widget _buildStatistics() {
    final statistics = [
      StatisticData(title: '策略', value: data.strategyCount.toString()),
      StatisticData(title: '观点', value: data.viewpointCount.toString()),
      StatisticData(title: '胜率', value: '${data.winRate.toStringAsFixed(2)}%'),
    ];

    return Row(
      children: statistics.asMap().entries.map((entry) {
        final index = entry.key;
        final stat = entry.value;
        
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                stat.title,
                style: statisticTitleTextStyle ?? const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                stat.value,
                style: statisticValueTextStyle ?? const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
