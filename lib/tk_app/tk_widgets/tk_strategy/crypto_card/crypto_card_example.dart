import 'package:flutter/material.dart';
import 'crypto_card_widget.dart';

/// 加密货币卡片组件示例
/// 展示各种使用方式和自定义选项
class CryptoCardExample extends StatefulWidget {
  const CryptoCardExample({super.key});

  @override
  State<CryptoCardExample> createState() => _CryptoCardExampleState();
}

class _CryptoCardExampleState extends State<CryptoCardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('加密货币卡片组件示例'),
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
            
            // 配置化示例
            _buildSectionTitle('配置化示例'),
            const SizedBox(height: 16.0),
            _buildConfigExample(),
            
            const SizedBox(height: 32.0),
            
            // 交互示例
            _buildSectionTitle('交互示例'),
            const SizedBox(height: 16.0),
            _buildInteractiveExample(),
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
    return const CryptoCardWidget(
      width: 200.0,
      height: 140.0,
      labelIcon: Icon(
        Icons.currency_bitcoin,
        color: Colors.white,
        size: 16.0,
      ),
      labelText: 'BTC',
      valueText: '114253.2',
      percentageIcon: Icon(
        Icons.trending_up,
        color: Color(0xFF008000),
        size: 16.0,
      ),
      percentageText: '+2.23%',
      percentageColor: Color(0xFF008000),
    );
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // 深色主题
          CryptoCardWidget(
            width: 180.0,
            height: 120.0,
            backgroundColor: const Color(0xFF1E1E1E),
            borderColor: const Color(0xFF333333),
            borderRadius: 16.0,
            labelBackgroundColor: const Color(0xFF4A148C),
            labelIcon: const Icon(
              Icons.currency_bitcoin,
              color: Colors.white,
              size: 14.0,
            ),
            labelText: 'BTC',
            labelTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
            ),
            valueText: '114253.2',
            valueTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            percentageIcon: const Icon(
              Icons.trending_up,
              color: Color(0xFF00E676),
              size: 14.0,
            ),
            percentageText: '+2.23%',
            percentageColor: const Color(0xFF00E676),
          ),
          
          const SizedBox(width: 16.0),
          
          // 圆角卡片
          CryptoCardWidget(
            width: 180.0,
            height: 120.0,
            backgroundColor: const Color(0xFFF5F5F5),
            borderRadius: 20.0,
            labelBackgroundColor: const Color(0xFFE91E63),
            labelBorderRadius: 12.0,
            labelIcon: const Icon(
              Icons.currency_exchange,
              color: Colors.white,
              size: 14.0,
            ),
            labelText: 'ETH',
            valueText: '3842.5',
            valueTextStyle: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            percentageIcon: const Icon(
              Icons.trending_down,
              color: Color(0xFFFF5722),
              size: 14.0,
            ),
            percentageText: '-1.45%',
            percentageColor: const Color(0xFFFF5722),
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
        CryptoCardWidget(
          width: 160.0,
          height: 110.0,
          labelIcon: Container(
            width: 16.0,
            height: 16.0,
            decoration: const BoxDecoration(
              color: Color(0xFFFFA500),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '₿',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          labelText: 'BTC',
          valueText: '114253.2',
          percentageIcon: const Icon(
            Icons.trending_up,
            color: Color(0xFF008000),
            size: 14.0,
          ),
          percentageText: '+2.23%',
          percentageColor: const Color(0xFF008000),
        ),
        
        // Ethereum
        CryptoCardWidget(
          width: 160.0,
          height: 110.0,
          labelIcon: Container(
            width: 16.0,
            height: 16.0,
            decoration: const BoxDecoration(
              color: Color(0xFF627EEA),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                'Ξ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          labelText: 'ETH',
          valueText: '3842.5',
          percentageIcon: const Icon(
            Icons.trending_down,
            color: Color(0xFFFF5722),
            size: 14.0,
          ),
          percentageText: '-1.45%',
          percentageColor: const Color(0xFFFF5722),
        ),
        
        // Cardano
        CryptoCardWidget(
          width: 160.0,
          height: 110.0,
          labelIcon: Container(
            width: 16.0,
            height: 16.0,
            decoration: const BoxDecoration(
              color: Color(0xFF0033AD),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '₳',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          labelText: 'ADA',
          valueText: '0.4521',
          percentageIcon: const Icon(
            Icons.trending_up,
            color: Color(0xFF008000),
            size: 14.0,
          ),
          percentageText: '+0.87%',
          percentageColor: const Color(0xFF008000),
        ),
      ],
    );
  }

  /// 配置化示例
  Widget _buildConfigExample() {
    // 创建配置
    const config = CryptoCardConfig(
      width: 200.0,
      height: 130.0,
      backgroundColor: Color(0xFFF8F9FA),
      borderColor: Color(0xFFE9ECEF),
      borderRadius: 12.0,
      labelBackgroundColor: Color(0xFF6F42C1),
      labelTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      valueTextStyle: TextStyle(
        color: Color(0xFF212529),
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      percentageTextStyle: TextStyle(
        color: Color(0xFF28A745),
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    );

    // 创建数据
    const data = CryptoCardData(
      labelIcon: Icon(
        Icons.currency_bitcoin,
        color: Colors.white,
        size: 16.0,
      ),
      labelText: 'BTC',
      valueText: '114253.2',
      percentageIcon: Icon(
        Icons.trending_up,
        color: Color(0xFF28A745),
        size: 16.0,
      ),
      percentageText: '+2.23%',
      percentageColor: Color(0xFF28A745),
    );

    // 应用配置
    final widget = const CryptoCardWidget();
    return config.applyTo(widget, data);
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // 可点击卡片
          CryptoCardWidget(
            width: 180.0,
            height: 120.0,
            labelIcon: const Icon(
              Icons.currency_bitcoin,
              color: Colors.white,
              size: 16.0,
            ),
            labelText: 'BTC',
            valueText: '114253.2',
            percentageIcon: const Icon(
              Icons.trending_up,
              color: Color(0xFF008000),
              size: 16.0,
            ),
            percentageText: '+2.23%',
            percentageColor: const Color(0xFF008000),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了 BTC 卡片'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
          
          const SizedBox(width: 16.0),
          
          // 带阴影的卡片
          CryptoCardWidget(
            width: 180.0,
            height: 120.0,
            labelIcon: const Icon(
              Icons.currency_exchange,
              color: Colors.white,
              size: 16.0,
            ),
            labelText: 'ETH',
            valueText: '3842.5',
            percentageIcon: const Icon(
              Icons.trending_down,
              color: Color(0xFFFF5722),
              size: 16.0,
            ),
            percentageText: '-1.45%',
            percentageColor: const Color(0xFFFF5722),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8.0,
                offset: const Offset(0, 4),
              ),
            ],
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('点击了 ETH 卡片'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// 加密货币卡片使用说明
class CryptoCardUsageGuide extends StatelessWidget {
  const CryptoCardUsageGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '加密货币卡片组件使用说明',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '1. 基础使用：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'CryptoCardWidget(\n'
            '  labelIcon: Icon(Icons.currency_bitcoin),\n'
            '  labelText: "BTC",\n'
            '  valueText: "114253.2",\n'
            '  percentageText: "+2.23%",\n'
            ')',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
              fontFamily: 'monospace',
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '2. 自定义样式：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '支持自定义背景色、边框、圆角、字体样式等所有视觉属性',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '3. 配置化使用：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '使用 CryptoCardConfig 和 CryptoCardData 进行配置化管理',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            '4. 交互支持：',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '支持 onTap 回调，可添加点击事件处理',
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
