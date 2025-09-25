import 'package:flutter/material.dart';
import 'crypto_info_widget.dart';
import 'crypto_info_data.dart';

/// 加密货币信息卡片组件示例
/// 展示各种使用方式和自定义选项
class CryptoInfoExample extends StatefulWidget {
  const CryptoInfoExample({super.key});

  @override
  State<CryptoInfoExample> createState() => _CryptoInfoExampleState();
}

class _CryptoInfoExampleState extends State<CryptoInfoExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('加密货币信息卡片组件示例'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 基础示例
            _buildSectionTitle('基础示例'),
            const SizedBox(height: 16.0),
            _buildBasicExample(),
            
            const SizedBox(height: 32.0),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式示例'),
            const SizedBox(height: 16.0),
            _buildCustomStyleExample(),
            
            const SizedBox(height: 32.0),
            
            // 不同加密货币示例
            _buildSectionTitle('不同加密货币示例'),
            const SizedBox(height: 16.0),
            _buildDifferentCryptoExample(),
            
            const SizedBox(height: 32.0),
            
            // 主题样式示例
            _buildSectionTitle('主题样式示例'),
            const SizedBox(height: 16.0),
            _buildThemeExample(),
            
            const SizedBox(height: 32.0),
            
            // 交互示例
            _buildSectionTitle('交互示例'),
            const SizedBox(height: 16.0),
            _buildInteractiveExample(),
            
            const SizedBox(height: 32.0),
            
            // 使用说明
            _buildSectionTitle('使用说明'),
            const SizedBox(height: 16.0),
            _buildUsageGuide(),
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
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  /// 基础示例
  Widget _buildBasicExample() {
    return CryptoInfoWidget.defaultStyle();
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // 自定义颜色样式
          CryptoInfoWidget(
            data: const CryptoInfoData(
              tradingPair: 'ETHUSDT',
              timeText: '09/11 16:30',
              priceText: '\$3842.5',
              levelText: '1H级别',
              statusText: '买入',
            ),
            style: CryptoInfoStyle.defaultStyle().copyWith(
              width: 200.0,
              height: 120.0,
              tradingPairBackgroundColor: const Color(0xFFE91E63),
              timeBackgroundColor: const Color(0xFFF5F5F5),
              priceBackgroundColor: const Color(0xFFE3F2FD),
              priceTextStyle: const TextStyle(
                color: Color(0xFF1976D2),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              levelBackgroundColor: const Color(0xFFE8F5E8),
              levelTextStyle: const TextStyle(
                color: Color(0xFF2E7D32),
                fontSize: 11.0,
                fontWeight: FontWeight.w500,
              ),
              statusBackgroundColor: const Color(0xFFFFEBEE),
              statusTextStyle: const TextStyle(
                color: Color(0xFFD32F2F),
                fontSize: 11.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          const SizedBox(width: 16.0),
          
          // 圆角卡片
          CryptoInfoWidget(
            data: const CryptoInfoData(
              tradingPair: 'ADAUSDT',
              timeText: '09/11 17:00',
              priceText: '\$0.4521',
              levelText: '4H级别',
              statusText: '持有',
            ),
            style: CryptoInfoStyle.defaultStyle().copyWith(
              width: 200.0,
              height: 120.0,
              borderRadius: 20.0,
              tradingPairBorderRadius: 12.0,
              timeBorderRadius: 10.0,
              priceBorderRadius: 10.0,
              eyeBorderRadius: 10.0,
              levelBorderRadius: 10.0,
              statusBorderRadius: 10.0,
              tradingPairBackgroundColor: const Color(0xFF9C27B0),
            ),
          ),
        ],
      ),
    );
  }

  /// 不同加密货币示例
  Widget _buildDifferentCryptoExample() {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: [
        // Bitcoin
        CryptoInfoWidget(
          data: const CryptoInfoData(
            tradingPair: 'BTCUSDT',
            timeText: '09/11 15:00',
            priceText: '\$114253.2',
            levelText: '30M级别',
            statusText: '观望',
          ),
          style: CryptoInfoStyle.defaultStyle().copyWith(
            width: 180.0,
            height: 110.0,
            tradingPairBackgroundColor: const Color(0xFFFFA500),
          ),
        ),
        
        // Ethereum
        CryptoInfoWidget(
          data: const CryptoInfoData(
            tradingPair: 'ETHUSDT',
            timeText: '09/11 16:30',
            priceText: '\$3842.5',
            levelText: '1H级别',
            statusText: '买入',
          ),
          style: CryptoInfoStyle.defaultStyle().copyWith(
            width: 180.0,
            height: 110.0,
            tradingPairBackgroundColor: const Color(0xFF627EEA),
          ),
        ),
        
        // Cardano
        CryptoInfoWidget(
          data: const CryptoInfoData(
            tradingPair: 'ADAUSDT',
            timeText: '09/11 17:00',
            priceText: '\$0.4521',
            levelText: '4H级别',
            statusText: '持有',
          ),
          style: CryptoInfoStyle.defaultStyle().copyWith(
            width: 180.0,
            height: 110.0,
            tradingPairBackgroundColor: const Color(0xFF0033AD),
          ),
        ),
        
        // Binance Coin
        CryptoInfoWidget(
          data: const CryptoInfoData(
            tradingPair: 'BNBUSDT',
            timeText: '09/11 18:00',
            priceText: '\$312.8',
            levelText: '2H级别',
            statusText: '卖出',
          ),
          style: CryptoInfoStyle.defaultStyle().copyWith(
            width: 180.0,
            height: 110.0,
            tradingPairBackgroundColor: const Color(0xFFF3BA2F),
            tradingPairTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  /// 主题样式示例
  Widget _buildThemeExample() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // 深色主题
          CryptoInfoConfig.createDarkTheme(
            data: const CryptoInfoData(
              tradingPair: 'BTCUSDT',
              timeText: '09/11 15:00',
              priceText: '\$114253.2',
              levelText: '30M级别',
              statusText: '观望',
            ),
          ),
          
          const SizedBox(width: 16.0),
          
          // 紧凑样式
          CryptoInfoConfig.createCompact(
            data: const CryptoInfoData(
              tradingPair: 'ETHUSDT',
              timeText: '09/11 16:30',
              priceText: '\$3842.5',
              levelText: '1H级别',
              statusText: '买入',
            ),
          ),
          
          const SizedBox(width: 16.0),
          
          // 自定义主题
          CryptoInfoWidget(
            data: const CryptoInfoData(
              tradingPair: 'ADAUSDT',
              timeText: '09/11 17:00',
              priceText: '\$0.4521',
              levelText: '4H级别',
              statusText: '持有',
            ),
            style: CryptoInfoStyle.defaultStyle().copyWith(
              width: 200.0,
              height: 120.0,
              backgroundColor: const Color(0xFFF8F9FA),
              borderColor: const Color(0xFFE9ECEF),
              tradingPairBackgroundColor: const Color(0xFF6F42C1),
              timeBackgroundColor: const Color(0xFFFFFFFF),
              priceBackgroundColor: const Color(0xFFFFFFFF),
              eyeBackgroundColor: const Color(0xFFFFFFFF),
              levelBackgroundColor: const Color(0xFFFFFFFF),
              statusBackgroundColor: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // 可点击卡片
          CryptoInfoWidget(
            data: const CryptoInfoData(
              tradingPair: 'BTCUSDT',
              timeText: '09/11 15:00',
              priceText: '\$114253.2',
              levelText: '30M级别',
              statusText: '观望',
            ),
            style: CryptoInfoStyle.defaultStyle().copyWith(
              width: 180.0,
              height: 120.0,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了 BTCUSDT 卡片'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
          
          const SizedBox(width: 16.0),
          
          // 带边框的卡片
          CryptoInfoWidget(
            data: const CryptoInfoData(
              tradingPair: 'ETHUSDT',
              timeText: '09/11 16:30',
              priceText: '\$3842.5',
              levelText: '1H级别',
              statusText: '买入',
            ),
            style: CryptoInfoStyle.defaultStyle().copyWith(
              width: 180.0,
              height: 120.0,
              borderColor: const Color(0xFF2196F3),
              borderWidth: 2.0,
              tradingPairBackgroundColor: const Color(0xFF2196F3),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了 ETHUSDT 卡片'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// 使用说明
  Widget _buildUsageGuide() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '使用说明',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 12.0),
          Text(
            '1. 基础使用：',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'CryptoInfoWidget.defaultStyle()',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
              fontFamily: 'monospace',
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '2. 自定义数据：',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'CryptoInfoWidget(\n'
            '  data: CryptoInfoData(\n'
            '    tradingPair: "BTCUSDT",\n'
            '    timeText: "09/11 15:00",\n'
            '    priceText: "\$114253.2",\n'
            '    levelText: "30M级别",\n'
            '    statusText: "观望",\n'
            '  ),\n'
            ')',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
              fontFamily: 'monospace',
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '3. 自定义样式：',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            '使用 CryptoInfoStyle 进行样式配置，支持所有视觉属性的自定义',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '4. 快速配置：',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'CryptoInfoConfig.createDarkTheme()\n'
            'CryptoInfoConfig.createCompact()',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
              fontFamily: 'monospace',
            ),
          ),
        ],
      ),
    );
  }
}

/// 加密货币信息卡片使用说明
class CryptoInfoUsageGuide extends StatelessWidget {
  const CryptoInfoUsageGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '加密货币信息卡片组件使用说明',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '组件特点：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '• 6个框的布局：第一排（交易对、时间），第二排（价格、眼睛图标），第三排（级别、状态）\n'
            '• 完全自定义：支持所有样式属性的自定义\n'
            '• 组件化设计：数据、样式、组件分离，易于维护\n'
            '• 高度复用：支持多种预设样式和快速配置\n'
            '• 响应式布局：自适应不同尺寸\n'
            '• 交互支持：支持点击事件',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '文件结构：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '• crypto_info_data.dart - 数据模型和样式配置\n'
            '• crypto_info_widget.dart - 主组件和配置类\n'
            '• crypto_info_example.dart - 使用示例和说明',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
