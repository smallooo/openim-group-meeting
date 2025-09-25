import 'package:flutter/material.dart';
import 'crypto_info_data.dart';
import 'crypto_info_widget.dart';

/// 加密货币信息卡片组件测试页面
class TestCryptoInfoPage extends StatelessWidget {
  const TestCryptoInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('加密货币信息卡片测试'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '基础样式测试',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            CryptoInfoWidget.defaultStyle(),
            
            const SizedBox(height: 32.0),
            
            const Text(
              '自定义数据测试',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            const CryptoInfoWidget(
              data: CryptoInfoData(
                tradingPair: 'ETHUSDT',
                timeText: '09/11 16:30',
                priceText: '\$3842.5',
                eyeIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
                levelText: '1H级别',
                statusText: '买入',
              ),
            ),
            
            const SizedBox(height: 32.0),
            
            const Text(
              '深色主题测试',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            CryptoInfoConfig.createDarkTheme(
              data: CryptoInfoData(
                tradingPair: 'ADAUSDT',
                timeText: '09/11 17:00',
                priceText: '\$0.4521',
                levelText: '4H级别',
                statusText: '持有',
              ),
            ),
            
            const SizedBox(height: 32.0),
            
            const Text(
              '紧凑样式测试',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            CryptoInfoConfig.createCompact(
              data: CryptoInfoData(
                tradingPair: 'BNBUSDT',
                timeText: '09/11 18:00',
                priceText: '\$312.8',
                levelText: '2H级别',
                statusText: '卖出',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
