import 'package:flutter/material.dart';
import 'user_profile_card_widget.dart';
import 'user_profile_card_data.dart';

/// 用户信息卡片示例页面
class UserProfileCardExample extends StatefulWidget {
  const UserProfileCardExample({super.key});

  @override
  State<UserProfileCardExample> createState() => _UserProfileCardExampleState();
}

class _UserProfileCardExampleState extends State<UserProfileCardExample> {
  int _selectedTagIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户信息卡片示例'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 默认样式示例
            _buildSectionTitle('默认样式'),
            const SizedBox(height: 16),
            UserProfileCardWidget(
              data: UserProfileCardData.defaultData(),
              onTagTap: (index) {
                setState(() {
                  _selectedTagIndex = index;
                });
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
              onTipsTap: () {
                _showSnackBar('点击了打赏区域');
              },
              onGuildTap: () {
                _showSnackBar('点击了工会信息');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式'),
            const SizedBox(height: 16),
            UserProfileCardWidget(
              data: UserProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/FF6B6B/FFFFFF?text=👨',
                name: '分析师 Alice',
                subscriptionInfo: const SubscriptionInfo(
                  label: '订阅',
                  current: 256,
                  total: 300,
                ),
                guildIconUrl: 'https://via.placeholder.com/20x20/4ECDC4/FFFFFF?text=🏆',
                guildName: '精英工会',
                followersCount: 1234,
                ratingInfo: const RatingInfo(
                  rating: 4.8,
                  maxRating: 5,
                ),
                tags: ['长线', '价值投资', '基本面'],
                selectedTagIndex: 1,
                contractPoliciesCount: 456,
                viewpointsCount: 89,
                profitCertificatesCount: 5,
                strategyWinRate: 85.5,
                tipperAvatars: [
                  'https://via.placeholder.com/20x20/FF6B6B/FFFFFF?text=👤',
                  'https://via.placeholder.com/20x20/4ECDC4/FFFFFF?text=👤',
                  'https://via.placeholder.com/20x20/45B7D1/FFFFFF?text=👤',
                ],
                totalTipsAmount: '456U',
                mainAmount: '328U',
                latestStrategyTime: '2小时前',
                subscriptionFee: '订阅费/月',
              ),
              padding: const EdgeInsets.all(20),
              borderRadius: 16,
              backgroundColor: Colors.grey[50],
              border: Border.all(color: Colors.blue, width: 1),
              avatarSize: 70,
              nameTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              subscriptionLabelTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
              ),
              subscriptionValueTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              guildNameTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
              selectedTagBackgroundColor: Colors.blue.withOpacity(0.2),
              selectedTagTextColor: Colors.blue,
              unselectedTagBackgroundColor: Colors.grey.withOpacity(0.1),
              unselectedTagTextColor: Colors.grey[600],
              starColor: Colors.amber,
              mainAmountTextStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['长线', '价值投资', '基本面'][index]}');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
              onTipsTap: () {
                _showSnackBar('点击了打赏区域');
              },
              onGuildTap: () {
                _showSnackBar('点击了工会信息');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 深色主题示例
            _buildSectionTitle('深色主题'),
            const SizedBox(height: 16),
            UserProfileCardWidget(
              data: UserProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/9C27B0/FFFFFF?text=👩',
                name: '交易员 Bob',
                subscriptionInfo: const SubscriptionInfo(
                  label: '订阅',
                  current: 3421,
                  total: 3500,
                ),
                guildIconUrl: 'https://via.placeholder.com/20x20/9C27B0/FFFFFF?text=⚡',
                guildName: '量化工会',
                followersCount: 9876,
                ratingInfo: const RatingInfo(
                  rating: 4.9,
                  maxRating: 5,
                ),
                tags: ['量化', '算法', '高频'],
                selectedTagIndex: 0,
                contractPoliciesCount: 3421,
                viewpointsCount: 1567,
                profitCertificatesCount: 8,
                strategyWinRate: 91.2,
                tipperAvatars: [
                  'https://via.placeholder.com/20x20/9C27B0/FFFFFF?text=👤',
                  'https://via.placeholder.com/20x20/E91E63/FFFFFF?text=👤',
                  'https://via.placeholder.com/20x20/673AB7/FFFFFF?text=👤',
                ],
                totalTipsAmount: '789U',
                mainAmount: '567U',
                latestStrategyTime: '1小时前',
                subscriptionFee: '订阅费/月',
              ),
              padding: const EdgeInsets.all(18),
              borderRadius: 20,
              backgroundColor: Colors.grey[900],
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
              nameTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              subscriptionLabelTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              subscriptionValueTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              guildNameTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.purple,
                fontWeight: FontWeight.w500,
              ),
              followersCountTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              selectedTagBackgroundColor: Colors.purple.withOpacity(0.3),
              selectedTagTextColor: Colors.purple,
              unselectedTagBackgroundColor: Colors.grey[800],
              unselectedTagTextColor: Colors.grey[400],
              statisticTitleTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              statisticValueTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              tipsAmountTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              mainAmountTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              timeTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              subscriptionFeeTextStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              dividerColor: Colors.grey[700],
              starColor: Colors.amber,
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['量化', '算法', '高频'][index]}');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
              onTipsTap: () {
                _showSnackBar('点击了打赏区域');
              },
              onGuildTap: () {
                _showSnackBar('点击了工会信息');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 紧凑样式示例
            _buildSectionTitle('紧凑样式'),
            const SizedBox(height: 16),
            UserProfileCardWidget(
              data: UserProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/4CAF50/FFFFFF?text=👨',
                name: '顾问 Carol',
                subscriptionInfo: const SubscriptionInfo(
                  label: '订阅',
                  current: 78,
                  total: 100,
                ),
                guildIconUrl: 'https://via.placeholder.com/20x20/4CAF50/FFFFFF?text=📊',
                guildName: '技术工会',
                followersCount: 543,
                ratingInfo: const RatingInfo(
                  rating: 4.2,
                  maxRating: 5,
                ),
                tags: ['技术分析', '图表'],
                selectedTagIndex: 0,
                contractPoliciesCount: 78,
                viewpointsCount: 23,
                profitCertificatesCount: 2,
                strategyWinRate: 68.3,
                tipperAvatars: [
                  'https://via.placeholder.com/20x20/4CAF50/FFFFFF?text=👤',
                  'https://via.placeholder.com/20x20/8BC34A/FFFFFF?text=👤',
                ],
                totalTipsAmount: '123U',
                mainAmount: '89U',
                latestStrategyTime: '6小时前',
                subscriptionFee: '订阅费/月',
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              borderRadius: 8,
              avatarSize: 50,
              smallAvatarSize: 16,
              nameTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              subscriptionLabelTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              subscriptionValueTextStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              guildNameTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
              followersCountTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              tagTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.green,
              ),
              selectedTagBackgroundColor: Colors.green.withOpacity(0.1),
              selectedTagTextColor: Colors.green,
              unselectedTagBackgroundColor: Colors.grey.withOpacity(0.1),
              unselectedTagTextColor: Colors.grey[600],
              statisticTitleTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              statisticValueTextStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              tipsAmountTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              mainAmountTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              timeTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              subscriptionFeeTextStyle: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              starSize: 12,
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['技术分析', '图表'][index]}');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
              onTipsTap: () {
                _showSnackBar('点击了打赏区域');
              },
              onGuildTap: () {
                _showSnackBar('点击了工会信息');
              },
            ),
          ],
        ),
      ),
    );
  }

  /// 构建章节标题
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  /// 显示提示信息
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
