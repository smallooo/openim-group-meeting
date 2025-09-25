import 'package:flutter/material.dart';
import 'profile_card_widget.dart';
import 'profile_card_data.dart';

/// 用户资料卡片示例页面
class ProfileCardExample extends StatefulWidget {
  const ProfileCardExample({super.key});

  @override
  State<ProfileCardExample> createState() => _ProfileCardExampleState();
}

class _ProfileCardExampleState extends State<ProfileCardExample> {
  int _selectedTagIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户资料卡片示例'),
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
            ProfileCardWidget(
              data: ProfileCardData.defaultData(),
              onTagTap: (index) {
                setState(() {
                  _selectedTagIndex = index;
                });
              },
              onFollowTap: () {
                _showSnackBar('点击了关注按钮');
              },
              onDetailTap: () {
                _showSnackBar('点击了详情按钮');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式'),
            const SizedBox(height: 16),
            ProfileCardWidget(
              data: ProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/FF6B6B/FFFFFF?text=U',
                name: 'Alice',
                title: '分析师',
                followCount: 1234,
                detailButtonText: '查看详情',
                tags: ['长线', '价值投资', '基本面'],
                selectedTagIndex: 1,
                strategyCount: 256,
                viewpointCount: 89,
                winRate: 85.5,
              ),
              padding: const EdgeInsets.all(20),
              borderRadius: 16,
              backgroundColor: Colors.grey[50],
              border: Border.all(color: Colors.blue, width: 1),
              avatarSize: 70,
              nameTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              titleTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              selectedTagBackgroundColor: Colors.blue.withOpacity(0.2),
              selectedTagTextColor: Colors.blue,
              unselectedTagBackgroundColor: Colors.grey.withOpacity(0.1),
              unselectedTagTextColor: Colors.grey[600],
              detailButtonStyle: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['长线', '价值投资', '基本面'][index]}');
              },
              onFollowTap: () {
                _showSnackBar('点击了关注按钮');
              },
              onDetailTap: () {
                _showSnackBar('点击了详情按钮');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 深色主题示例
            _buildSectionTitle('深色主题'),
            const SizedBox(height: 16),
            ProfileCardWidget(
              data: ProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/9C27B0/FFFFFF?text=D',
                name: 'Bob',
                title: '交易员',
                followCount: 9876,
                detailButtonText: '详情',
                tags: ['量化', '算法', '高频'],
                selectedTagIndex: 0,
                strategyCount: 3421,
                viewpointCount: 1567,
                winRate: 91.2,
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
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              titleTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              followCountTextStyle: const TextStyle(
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              detailButtonStyle: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['量化', '算法', '高频'][index]}');
              },
              onFollowTap: () {
                _showSnackBar('点击了关注按钮');
              },
              onDetailTap: () {
                _showSnackBar('点击了详情按钮');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 紧凑样式示例
            _buildSectionTitle('紧凑样式'),
            const SizedBox(height: 16),
            ProfileCardWidget(
              data: ProfileCardData(
                avatarUrl: 'https://via.placeholder.com/60x60/4CAF50/FFFFFF?text=C',
                name: 'Carol',
                title: '顾问',
                followCount: 543,
                detailButtonText: '更多',
                tags: ['技术分析', '图表'],
                selectedTagIndex: 0,
                strategyCount: 78,
                viewpointCount: 23,
                winRate: 68.3,
              ),
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              borderRadius: 8,
              avatarSize: 50,
              nameTextStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              titleTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              followCountTextStyle: const TextStyle(
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
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              detailButtonStyle: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              ),
              onTagTap: (index) {
                _showSnackBar('选择了标签: ${['技术分析', '图表'][index]}');
              },
              onFollowTap: () {
                _showSnackBar('点击了关注按钮');
              },
              onDetailTap: () {
                _showSnackBar('点击了详情按钮');
              },
              onAvatarTap: () {
                _showSnackBar('点击了头像');
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
