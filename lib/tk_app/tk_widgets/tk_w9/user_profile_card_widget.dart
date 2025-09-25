import 'package:flutter/material.dart';
import 'user_profile_card_data.dart';

/// 用户信息卡片组件
/// 
/// 一个高度可定制的用户信息卡片，包含头像、姓名、订阅信息、
/// 工会信息、评分、标签、统计数据、打赏信息等功能
class UserProfileCardWidget extends StatelessWidget {
  /// 卡片数据
  final UserProfileCardData data;
  
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
  
  /// 订阅标签文本样式
  final TextStyle? subscriptionLabelTextStyle;
  
  /// 订阅数值文本样式
  final TextStyle? subscriptionValueTextStyle;
  
  /// 工会名称文本样式
  final TextStyle? guildNameTextStyle;
  
  /// 关注者数量文本样式
  final TextStyle? followersCountTextStyle;
  
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
  
  /// 打赏金额文本样式
  final TextStyle? tipsAmountTextStyle;
  
  /// 主要金额文本样式
  final TextStyle? mainAmountTextStyle;
  
  /// 时间文本样式
  final TextStyle? timeTextStyle;
  
  /// 订阅费用文本样式
  final TextStyle? subscriptionFeeTextStyle;
  
  /// 分割线颜色
  final Color? dividerColor;
  
  /// 星形图标颜色
  final Color? starColor;
  
  /// 空星形图标颜色
  final Color? emptyStarColor;
  
  /// 星形图标大小
  final double starSize;
  
  /// 小头像尺寸
  final double smallAvatarSize;
  
  /// 小头像圆角半径
  final double smallAvatarBorderRadius;
  
  /// 标签点击回调
  final ValueChanged<int>? onTagTap;
  
  /// 头像点击回调
  final VoidCallback? onAvatarTap;
  
  /// 打赏区域点击回调
  final VoidCallback? onTipsTap;
  
  /// 工会点击回调
  final VoidCallback? onGuildTap;

  const UserProfileCardWidget({
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
    this.subscriptionLabelTextStyle,
    this.subscriptionValueTextStyle,
    this.guildNameTextStyle,
    this.followersCountTextStyle,
    this.tagTextStyle,
    this.selectedTagBackgroundColor,
    this.unselectedTagBackgroundColor,
    this.selectedTagTextColor,
    this.unselectedTagTextColor,
    this.statisticTitleTextStyle,
    this.statisticValueTextStyle,
    this.tipsAmountTextStyle,
    this.mainAmountTextStyle,
    this.timeTextStyle,
    this.subscriptionFeeTextStyle,
    this.dividerColor,
    this.starColor = Colors.orange,
    this.emptyStarColor = Colors.grey,
    this.starSize = 16.0,
    this.smallAvatarSize = 20.0,
    this.smallAvatarBorderRadius = 10.0,
    this.onTagTap,
    this.onAvatarTap,
    this.onTipsTap,
    this.onGuildTap,
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
            const SizedBox(height: 12),
            _buildTags(),
            const SizedBox(height: 12),
            _buildStatistics(),
            const SizedBox(height: 12),
            _buildDivider(),
            const SizedBox(height: 12),
            _buildTipsSection(),
            const SizedBox(height: 12),
            _buildBottomInfo(),
          ],
        ),
      ),
    );
  }

  /// 构建头部区域（头像、姓名、订阅信息、工会信息、关注者、评分）
  Widget _buildHeader() {
    return Row(
      children: [
        // 头像 (1)
        GestureDetector(
          onTap: onAvatarTap,
          child: Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(avatarBorderRadius),
              image: DecorationImage(
                image: NetworkImage(data.avatarUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // 姓名和订阅信息 (2, 3)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 姓名 (2)
              Text(
                data.name,
                style: nameTextStyle ?? const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              // 订阅信息 (3)
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data.subscriptionInfo.label,
                      style: subscriptionLabelTextStyle ?? const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: ' ${data.subscriptionInfo.current}/${data.subscriptionInfo.total}',
                      style: subscriptionValueTextStyle ?? const TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // 工会信息和关注者 (4, 5, 6)
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // 工会信息 (4, 5)
            GestureDetector(
              onTap: onGuildTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (data.guildIconUrl != null) ...[
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(data.guildIconUrl!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                  Text(
                    data.guildName,
                    style: guildNameTextStyle ?? const TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            // 关注者数量 (6)
            Text(
              '关注者 ${data.followersCount}',
              style: followersCountTextStyle ?? const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(width: 12),
        // 评分 (7)
        _buildRating(),
      ],
    );
  }

  /// 构建评分区域 (7)
  Widget _buildRating() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(data.ratingInfo.maxRating, (index) {
        final rating = data.ratingInfo.rating;
        final isHalfStar = rating - index > 0 && rating - index < 1;
        final isFullStar = rating - index >= 1;
        
        return Padding(
          padding: EdgeInsets.only(right: index < data.ratingInfo.maxRating - 1 ? 2 : 0),
          child: Icon(
            isHalfStar ? Icons.star_half : (isFullStar ? Icons.star : Icons.star_border),
            size: starSize,
            color: isFullStar || isHalfStar ? starColor : emptyStarColor,
          ),
        );
      }),
    );
  }

  /// 构建标签区域 (8)
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

  /// 构建统计区域 (9)
  Widget _buildStatistics() {
    return Column(
      children: [
        // 合约政策和观点
        Row(
          children: [
            _buildStatisticItem('合约政策', data.contractPoliciesCount.toString()),
            _buildVerticalDivider(),
            _buildStatisticItem('观点', data.viewpointsCount.toString()),
          ],
        ),
        const SizedBox(height: 8),
        // 盈利凭证和策略胜率
        Row(
          children: [
            _buildStatisticItem('盈利凭证', data.profitCertificatesCount.toString()),
            _buildVerticalDivider(),
            _buildStatisticItem('策略胜率', '${data.strategyWinRate.toStringAsFixed(2)}%'),
          ],
        ),
      ],
    );
  }

  /// 构建统计项
  Widget _buildStatisticItem(String title, String value) {
    return Expanded(
      child: Row(
        children: [
          Text(
            title,
            style: statisticTitleTextStyle ?? const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            value,
            style: statisticValueTextStyle ?? const TextStyle(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建垂直分割线
  Widget _buildVerticalDivider() {
    return Container(
      width: 1,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: dividerColor ?? Colors.grey[300],
    );
  }

  /// 构建分割线 (10)
  Widget _buildDivider() {
    return Container(
      height: 1,
      color: dividerColor ?? Colors.grey[300],
    );
  }

  /// 构建打赏区域 (11, 12)
  Widget _buildTipsSection() {
    return Row(
      children: [
        // 打赏者头像和金额 (11)
        Expanded(
          child: GestureDetector(
            onTap: onTipsTap,
            child: Row(
              children: [
                // 打赏者头像
                ...data.tipperAvatars.take(3).map((avatarUrl) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Container(
                    width: smallAvatarSize,
                    height: smallAvatarSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(smallAvatarBorderRadius),
                      image: DecorationImage(
                        image: NetworkImage(avatarUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 4),
                Text(
                  '等合计打赏${data.totalTipsAmount}',
                  style: tipsAmountTextStyle ?? const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
        // 主要金额 (12)
        Text(
          data.mainAmount,
          style: mainAmountTextStyle ?? const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  /// 构建底部信息 (13, 14)
  Widget _buildBottomInfo() {
    return Row(
      children: [
        // 最新策略时间 (13)
        Expanded(
          child: Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '最新策略于:${data.latestStrategyTime}',
                style: timeTextStyle ?? const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        // 订阅费用 (14)
        Row(
          children: [
            Icon(
              Icons.wifi,
              size: 12,
              color: Colors.grey[400],
            ),
            const SizedBox(width: 4),
            Text(
              data.subscriptionFee,
              style: subscriptionFeeTextStyle ?? const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
