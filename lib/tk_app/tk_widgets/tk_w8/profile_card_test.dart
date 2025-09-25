import 'package:flutter/material.dart';
import 'profile_card_widget.dart';
import 'profile_card_data.dart';

/// 用户资料卡片测试页面
class ProfileCardTest extends StatefulWidget {
  const ProfileCardTest({super.key});

  @override
  State<ProfileCardTest> createState() => _ProfileCardTestState();
}

class _ProfileCardTestState extends State<ProfileCardTest> {
  int _selectedTagIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('用户资料卡片测试'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ProfileCardWidget(
            data: ProfileCardData(
              avatarUrl: 'https://via.placeholder.com/60x60/FF6B6B/FFFFFF?text=U',
              name: 'David',
              title: '會長',
              followCount: 5514,
              detailButtonText: '详情',
              tags: ['短线', '中线', '高频'],
              selectedTagIndex: _selectedTagIndex,
              strategyCount: 1715,
              viewpointCount: 444,
              winRate: 72.59,
            ),
            onTagTap: (index) {
              setState(() {
                _selectedTagIndex = index;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('选择了标签: ${['短线', '中线', '高频'][index]}'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            onFollowTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了关注按钮'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            onDetailTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了详情按钮'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            onAvatarTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了头像'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
