import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberProfilePage extends GetView<StrategyMemberProfileLogic> {
  StrategyMemberProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 确保controller被注册
    Get.put(StrategyMemberProfileLogic());
    
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '交易员',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 用户信息部分
            _buildUserInfoSection(),
            const SizedBox(height: 20),
            
            // 统计卡片和发布按钮
            _buildStatsAndPublishSection(),
            const SizedBox(height: 20),
            
            // 分账比例
            _buildSplitRatioSection(),
            const SizedBox(height: 20),
            
            // 更多设置
            _buildMoreSettingsSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          // 用户头像
          Obx(() => controller.state.isLoading.value
              ? const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: controller.state.userAvatar.value.isNotEmpty 
                      ? NetworkImage(controller.state.userAvatar.value)
                      : null,
                  child: controller.state.userAvatar.value.isEmpty 
                      ? const Icon(Icons.person, size: 50, color: Colors.grey)
                      : null,
                )),
          const SizedBox(height: 16),
          
          // 用户昵称
          Obx(() => Text(
            controller.state.userName.value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 20),
          
          // 4个图标
          _buildIconsRow(),
        ],
      ),
    );
  }

  Widget _buildIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconItem(Icons.star, Colors.orange),
        const SizedBox(width: 8),
        _buildIconItem(Icons.star, Colors.orange),
        const SizedBox(width: 8),
        _buildIconItem(Icons.star, Colors.orange),
        const SizedBox(width: 8),
        _buildIconItem(Icons.star, Colors.orange),
      ],
    );
  }

  Widget _buildIconItem(IconData icon, Color color) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  Widget _buildStatsAndPublishSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF), // 和页面背景色一样
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 1), // 灰色边框
      ),
      child: Column(
        children: [
          // 统计数据
          Row(
            children: [
              Expanded(child: _buildStatItem('我的策略', controller.state.myStrategiesCount, Icons.shield, Colors.green)),
              Expanded(child: _buildStatItem('我的观点', controller.state.myViewsCount, Icons.visibility, Colors.blue)),
              Expanded(child: _buildStatItem('订阅用户', controller.state.subscribersCount, Icons.people, Colors.green)),
            ],
          ),
          const SizedBox(height: 20),
          
          // 发布交易策略按钮
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: controller.publishTradingStrategy,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[100],
                foregroundColor: Colors.grey[600],
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey[300]!, width: 1), // 灰色边框
                ),
              ),
              child: const Text(
                '发布交易策略',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String title, RxInt count, IconData icon, Color color) {
    return Column(
      children: [
        // 标题在上面
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        
        // 灰色圆角容器
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 图标在上面
              Icon(icon, color: color, size: 28),
              const SizedBox(height: 8),
              // 数字在下面
              Obx(() => Text(
                count.value.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSplitRatioSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF), // 和页面背景色一样
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 1), // 灰色边框
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '分账比例',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          _buildSplitRatioItem('订阅分账比例', controller.state.subscriptionSplitRatio),
          const SizedBox(height: 16),
          _buildSplitRatioItem('打赏分账比例', controller.state.rewardSplitRatio),
          const SizedBox(height: 16),
          _buildSplitRatioItem('直播分账比例', controller.state.liveSplitRatio),
        ],
      ),
    );
  }

  Widget _buildSplitRatioItem(String title, RxString ratio) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        Obx(() => Text(
          ratio.value,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        )),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () => controller.showSplitRatioHelp(title),
          child: Icon(
            Icons.help_outline,
            size: 18,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }

  Widget _buildMoreSettingsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF), // 和页面背景色一样
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 1), // 灰色边框
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              '更多设置',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          _buildSettingItem(Icons.attach_money, '费用设置', controller.openFeeSettings),
          _buildSettingItem(Icons.account_balance_wallet, '押金管理', controller.openDepositManagement),
          _buildSettingItem(Icons.live_tv, '主播中心', controller.openAnchorCenter),
          _buildSettingItem(Icons.rate_review, '评价管理', controller.openReviewManagement),
          _buildSettingItem(Icons.settings, '更多设置', controller.openMoreSettings),
          _buildSettingItem(Icons.trending_up, '交易风格', controller.openTradingStyle),
        ],
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: _getIconColor(title),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }

  Color _getIconColor(String title) {
    switch (title) {
      case '费用设置':
        return Colors.blue;
      case '押金管理':
        return Colors.orange;
      case '主播中心':
        return Colors.grey;
      case '评价管理':
        return Colors.purple;
      case '更多设置':
        return Colors.blue;
      case '交易风格':
        return Colors.green;
      default:
        return Colors.blue;
    }
  }
}
