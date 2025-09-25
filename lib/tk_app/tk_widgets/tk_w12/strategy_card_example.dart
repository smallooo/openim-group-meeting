import 'package:flutter/material.dart';
import 'strategy_card_widget.dart';
import 'strategy_card_data.dart';

/// 策略卡片示例页面
class StrategyCardExample extends StatefulWidget {
  const StrategyCardExample({super.key});

  @override
  State<StrategyCardExample> createState() => _StrategyCardExampleState();
}

class _StrategyCardExampleState extends State<StrategyCardExample> {
  int _currentCount = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('策略卡片示例'),
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
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData.defaultData(),
                onTap: () => _showSnackBar('点击了卡片'),
                onIconTap: () => _showSnackBar('点击了图标'),
                onCountTap: () {
                  setState(() {
                    _currentCount++;
                  });
                  _showSnackBar('点击了数量，当前值: $_currentCount');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式'),
            const SizedBox(height: 16),
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData(
                  title: '投资策略',
                  icon: 'chart',
                  count: 42,
                  showBorder: true,
                  backgroundColor: '#F5F5F5',
                  titleTextColor: '#2196F3',
                  iconColor: '#FF9800',
                  countTextColor: '#E91E63',
                ),
                padding: const EdgeInsets.all(20),
                borderRadius: 16,
                borderColor: Colors.blue,
                borderWidth: 2,
                backgroundColor: Colors.grey[100],
                iconSize: 32,
                iconBackgroundColor: Colors.orange[50],
                iconBorderRadius: 12,
                countBackgroundColor: Colors.pink[50],
                countBorderRadius: 12,
                titleTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                countTextStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
                onTap: () => _showSnackBar('点击了自定义卡片'),
                onIconTap: () => _showSnackBar('点击了图表图标'),
                onCountTap: () => _showSnackBar('点击了数量: 42'),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 深色主题示例
            _buildSectionTitle('深色主题'),
            const SizedBox(height: 16),
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData(
                  title: '量化策略',
                  icon: 'analytics',
                  count: 128,
                  showBorder: true,
                  backgroundColor: '#2C2C2C',
                  titleTextColor: '#FFFFFF',
                  iconColor: '#4CAF50',
                  countTextColor: '#FFC107',
                ),
                padding: const EdgeInsets.all(18),
                borderRadius: 20,
                borderColor: Colors.green,
                borderWidth: 1.5,
                backgroundColor: Colors.grey[900],
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
                iconSize: 28,
                iconBackgroundColor: Colors.green[900],
                iconBorderRadius: 14,
                countBackgroundColor: Colors.amber[900],
                countBorderRadius: 14,
                titleTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                countTextStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
                onTap: () => _showSnackBar('点击了深色主题卡片'),
                onIconTap: () => _showSnackBar('点击了分析图标'),
                onCountTap: () => _showSnackBar('点击了数量: 128'),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 紧凑样式示例
            _buildSectionTitle('紧凑样式'),
            const SizedBox(height: 16),
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData(
                  title: '短线策略',
                  icon: 'star',
                  count: 7,
                  showBorder: true,
                  backgroundColor: '#FFF3E0',
                  titleTextColor: '#FF5722',
                  iconColor: '#FF9800',
                  countTextColor: '#795548',
                ),
                padding: const EdgeInsets.all(12),
                borderRadius: 8,
                borderColor: Colors.orange,
                borderWidth: 1,
                backgroundColor: Colors.orange[50],
                iconSize: 20,
                iconBackgroundColor: Colors.orange[100],
                iconBorderRadius: 6,
                countBackgroundColor: Colors.brown[100],
                countBorderRadius: 6,
                titleTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange,
                ),
                countTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
                onTap: () => _showSnackBar('点击了紧凑样式卡片'),
                onIconTap: () => _showSnackBar('点击了星星图标'),
                onCountTap: () => _showSnackBar('点击了数量: 7'),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 无边框样式示例
            _buildSectionTitle('无边框样式'),
            const SizedBox(height: 16),
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData(
                  title: '长线策略',
                  icon: 'favorite',
                  count: 3,
                  showBorder: false,
                  backgroundColor: '#E8F5E8',
                  titleTextColor: '#2E7D32',
                  iconColor: '#F44336',
                  countTextColor: '#1976D2',
                ),
                padding: const EdgeInsets.all(16),
                borderRadius: 12,
                backgroundColor: Colors.green[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                iconSize: 26,
                iconBackgroundColor: Colors.red[50],
                iconBorderRadius: 10,
                countBackgroundColor: Colors.blue[50],
                countBorderRadius: 10,
                titleTextStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
                countTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                onTap: () => _showSnackBar('点击了无边框卡片'),
                onIconTap: () => _showSnackBar('点击了心形图标'),
                onCountTap: () => _showSnackBar('点击了数量: 3'),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 动态数据示例
            _buildSectionTitle('动态数据示例'),
            const SizedBox(height: 16),
            Center(
              child: StrategyCardWidget(
                data: StrategyCardData(
                  title: '实时策略',
                  icon: 'settings',
                  count: _currentCount,
                  showBorder: true,
                  backgroundColor: '#F3E5F5',
                  titleTextColor: '#7B1FA2',
                  iconColor: '#9C27B0',
                  countTextColor: '#E91E63',
                ),
                padding: const EdgeInsets.all(16),
                borderRadius: 14,
                borderColor: Colors.purple,
                borderWidth: 1.5,
                backgroundColor: Colors.purple[50],
                iconSize: 30,
                iconBackgroundColor: Colors.purple[100],
                iconBorderRadius: 15,
                countBackgroundColor: Colors.pink[100],
                countBorderRadius: 15,
                titleTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
                countTextStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
                onTap: () {
                  setState(() {
                    _currentCount += 5;
                  });
                  _showSnackBar('点击了卡片，数量增加5，当前值: $_currentCount');
                },
                onIconTap: () {
                  setState(() {
                    _currentCount += 1;
                  });
                  _showSnackBar('点击了图标，数量增加1，当前值: $_currentCount');
                },
                onCountTap: () {
                  setState(() {
                    _currentCount += 10;
                  });
                  _showSnackBar('点击了数量，增加10，当前值: $_currentCount');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 网格布局示例
            _buildSectionTitle('网格布局示例'),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
              children: [
                StrategyCardWidget(
                  data: StrategyCardData(
                    title: '策略A',
                    icon: 'lightbulb',
                    count: 15,
                    showBorder: true,
                    backgroundColor: '#E3F2FD',
                    titleTextColor: '#1976D2',
                    iconColor: '#2196F3',
                    countTextColor: '#1976D2',
                  ),
                  padding: const EdgeInsets.all(12),
                  borderRadius: 10,
                  onTap: () => _showSnackBar('点击了策略A'),
                ),
                StrategyCardWidget(
                  data: StrategyCardData(
                    title: '策略B',
                    icon: 'chart',
                    count: 23,
                    showBorder: true,
                    backgroundColor: '#E8F5E8',
                    titleTextColor: '#388E3C',
                    iconColor: '#4CAF50',
                    countTextColor: '#388E3C',
                  ),
                  padding: const EdgeInsets.all(12),
                  borderRadius: 10,
                  onTap: () => _showSnackBar('点击了策略B'),
                ),
                StrategyCardWidget(
                  data: StrategyCardData(
                    title: '策略C',
                    icon: 'analytics',
                    count: 8,
                    showBorder: true,
                    backgroundColor: '#FFF3E0',
                    titleTextColor: '#F57C00',
                    iconColor: '#FF9800',
                    countTextColor: '#F57C00',
                  ),
                  padding: const EdgeInsets.all(12),
                  borderRadius: 10,
                  onTap: () => _showSnackBar('点击了策略C'),
                ),
                StrategyCardWidget(
                  data: StrategyCardData(
                    title: '策略D',
                    icon: 'star',
                    count: 31,
                    showBorder: true,
                    backgroundColor: '#FCE4EC',
                    titleTextColor: '#C2185B',
                    iconColor: '#E91E63',
                    countTextColor: '#C2185B',
                  ),
                  padding: const EdgeInsets.all(12),
                  borderRadius: 10,
                  onTap: () => _showSnackBar('点击了策略D'),
                ),
              ],
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
