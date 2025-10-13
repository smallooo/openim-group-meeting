import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class QuantificationHomePage extends StatelessWidget {
  QuantificationHomePage({Key? key}) : super(key: key);

  final logic = Get.find<QuantificationHomeLogic>();
  final state = Get.find<QuantificationHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => logic.changeMode("智能模式"),
              child: _buildModeTab("智能模式", state.selectedMode.value == "智能模式"),
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () => logic.changeMode("专业模式"),
              child: _buildModeTab("专业模式", state.selectedMode.value == "专业模式"),
            ),
          ],
        )),
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0, // 确保滚动时没有阴影或颜色变化
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "请输入内容",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4, // For demonstration, showing 4 cards
              itemBuilder: (context, index) {
                // Simulate different statuses for demonstration
                String status;
                if (index == 2) {
                  status = '已启动';
                } else {
                  status = '未启动';
                }
                return GestureDetector(
                  onTap: () => logic.onCardTapped(),
                  child: _StrategyCard(
                    cryptoPair: 'BTC-USDT-多',
                    realizedProfit: '0.0435 USDT',
                    status: status,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModeTab(String title, bool isSelected) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
        if (isSelected)
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 3,
            width: 60,
            color: Colors.deepPurple,
          ),
      ],
    );
  }
}

class _StrategyCard extends StatelessWidget {
  final String cryptoPair;
  final String realizedProfit;
  final String status;

  const _StrategyCard({
    Key? key,
    required this.cryptoPair,
    required this.realizedProfit,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // 设置卡片背景颜色
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 12,
                  child: Text(
                    'B',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  cryptoPair,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  '获取账户风险',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              '实现收益',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  realizedProfit,
                  style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      '当前状态:',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(width: 5),
                    Text(
                      status,
                      style: TextStyle(
                        color: status == '已启动' ? Colors.green : Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () => Get.find<QuantificationHomeLogic>().onStrategySettingsTapped(),
                  child: _buildActionButton('策略设置'),
                ),
                // SizedBox(width: 10),
                // _buildActionButton('查看收益'),
                SizedBox(width: 10),
                _buildActionButton('运行状态'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.black87),
      ),
    );
  }
}
