import 'package:flutter/material.dart';
import 'unlock_card_widget.dart';

/// 解锁卡片组件示例页面
class UnlockCardExample extends StatefulWidget {
  const UnlockCardExample({super.key});

  @override
  State<UnlockCardExample> createState() => _UnlockCardExampleState();
}

class _UnlockCardExampleState extends State<UnlockCardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('解锁卡片组件示例'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
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
            
            // 预设样式示例
            _buildSectionTitle('预设样式示例'),
            const SizedBox(height: 16.0),
            _buildPresetStyleExample(),
            const SizedBox(height: 32.0),
            
            // 不同尺寸示例
            _buildSectionTitle('不同尺寸示例'),
            const SizedBox(height: 16.0),
            _buildDifferentSizeExample(),
            const SizedBox(height: 32.0),
            
            // 交互示例
            _buildSectionTitle('交互示例'),
            const SizedBox(height: 16.0),
            _buildInteractiveExample(),
            const SizedBox(height: 32.0),
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
        color: Colors.black,
      ),
    );
  }

  /// 基础示例
  Widget _buildBasicExample() {
    return Center(
      child: UnlockCardWidget(
        width: 230.0,
        height: 190.0,
        topLeftText: '仅需10U',
        topLeftTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        topLeftBackgroundColor: const Color(0xFF6A0DAD),
        topRightImage: Container(
          width: 40.0,
          height: 40.0,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Text(
              'V',
              style: TextStyle(
                color: Color(0xFFF5F5DC), // 米色
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        mainText: '解锁全部功能',
        subText: '即可解锁全部趋势指标',
        subTextStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
        ),
        buttonText: '立即解锁',
        onButtonTap: () {
          _showSnackBar('点击了立即解锁按钮');
        },
        onCardTap: () {
          _showSnackBar('点击了卡片');
        },
      ),
    );
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return Center(
      child: UnlockCardWidget(
        width: 320.0,
        height: 220.0,
        backgroundColor: const Color(0xFFF8F9FA),
        borderColor: const Color(0xFFE9ECEF),
        borderRadius: 16.0,
        padding: const EdgeInsets.all(20.0),
        topLeftText: 'PRO',
        topLeftTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        topLeftBackgroundColor: const Color(0xFF28A745),
        topLeftBorderRadius: 12.0,
        topRightImage: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF6C757D),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.diamond,
            color: Colors.white,
            size: 16.0,
          ),
        ),
        topRightImageSize: 32.0,
        topRightBackgroundColor: const Color(0xFF6C757D),
        topRightBorderRadius: 16.0,
        mainText: '高级功能',
        mainTextStyle: const TextStyle(
          color: Color(0xFF212529),
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        subText: '享受更多专业功能',
        subTextStyle: const TextStyle(
          color: Color(0xFF6C757D),
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
        mainSubTextSpacing: 12.0,
        buttonText: '升级到PRO',
        buttonBackgroundColor: const Color(0xFF28A745),
        buttonBorderRadius: 12.0,
        buttonHeight: 48.0,
        onButtonTap: () {
          _showSnackBar('点击了升级到PRO按钮');
        },
      ),
    );
  }

  /// 预设样式示例
  Widget _buildPresetStyleExample() {
    return Column(
      children: [
        // 简约样式
        Center(
          child: UnlockCardPresets.minimalStyle.applyTo(
            const UnlockCardWidget(),
            const UnlockCardData(
              topLeftText: 'MIN',
              topRightImage: Icon(Icons.check, color: Colors.white, size: 16.0),
              mainText: '简约风格',
              subText: '简洁明了的设计',
              buttonText: '选择简约',
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 深色样式
        Center(
          child: UnlockCardPresets.darkStyle.applyTo(
            const UnlockCardWidget(),
            const UnlockCardData(
              topLeftText: 'DARK',
              topRightImage: Icon(Icons.nightlight_round, color: Colors.white, size: 16.0),
              mainText: '深色主题',
              subText: '适合夜间使用',
              buttonText: '启用深色',
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 圆润样式
        Center(
          child: UnlockCardPresets.roundedStyle.applyTo(
            const UnlockCardWidget(),
            const UnlockCardData(
              topLeftText: 'ROUND',
              topRightImage: Icon(Icons.favorite, color: Colors.white, size: 16.0),
              mainText: '圆润设计',
              subText: '更加柔和的视觉效果',
              buttonText: '选择圆润',
            ),
          ),
        ),
      ],
    );
  }

  /// 不同尺寸示例
  Widget _buildDifferentSizeExample() {
    return Column(
      children: [
        // 小尺寸
        Center(
          child: UnlockCardWidget(
            width: 200.0,
            height: 120.0,
            topLeftText: 'S',
            mainText: '小卡片',
            subText: '紧凑设计',
            buttonText: '小按钮',
            onButtonTap: () => _showSnackBar('小卡片按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 中等尺寸
        Center(
          child: UnlockCardWidget(
            width: 280.0,
            height: 160.0,
            topLeftText: 'M',
            mainText: '中等卡片',
            subText: '平衡的尺寸设计',
            buttonText: '中等按钮',
            onButtonTap: () => _showSnackBar('中等卡片按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 大尺寸
        Center(
          child: UnlockCardWidget(
            width: 350.0,
            height: 240.0,
            topLeftText: 'L',
            mainText: '大卡片',
            subText: '宽敞的布局设计',
            buttonText: '大按钮',
            onButtonTap: () => _showSnackBar('大卡片按钮'),
          ),
        ),
      ],
    );
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return Center(
      child: UnlockCardWidget(
        width: 300.0,
        height: 200.0,
        backgroundColor: Colors.white,
        borderColor: const Color(0xFF007BFF),
        borderWidth: 2.0,
        borderRadius: 12.0,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
        topLeftText: '交互',
        topLeftBackgroundColor: const Color(0xFF007BFF),
        topRightImage: const Icon(
          Icons.touch_app,
          color: Colors.white,
          size: 20.0,
        ),
        mainText: '点击体验',
        subText: '支持多种交互方式',
        buttonText: '开始体验',
        buttonBackgroundColor: const Color(0xFF007BFF),
        onButtonTap: () {
          _showSnackBar('按钮被点击了！');
        },
        onCardTap: () {
          _showSnackBar('卡片被点击了！');
        },
      ),
    );
  }

  /// 显示提示信息
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

/// 解锁卡片组件使用说明
class UnlockCardUsageGuide extends StatelessWidget {
  const UnlockCardUsageGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('使用说明'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUsageSection(
              '基本用法',
              'UnlockCardWidget 是一个高度可定制的卡片组件，支持左上角文本、右上角图片、中间文本和底部按钮。',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '主要属性',
              '''
• topLeftText: 左上角文本内容
• topRightImage: 右上角图片组件
• mainText: 中间主文本
• subText: 中间副文本
• buttonText: 底部按钮文本
• onButtonTap: 按钮点击回调
• onCardTap: 卡片点击回调
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '样式自定义',
              '''
• 支持完全自定义颜色、字体、尺寸等
• 提供预设样式：minimalStyle、darkStyle、roundedStyle
• 使用 UnlockCardStyle 类进行批量样式配置
• 使用 UnlockCardData 类进行数据配置
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '代码示例',
              '''
UnlockCardWidget(
  width: 300.0,
  height: 200.0,
  topLeftText: 'VIP',
  topRightImage: Icon(Icons.star),
  mainText: '仅需10U',
  subText: '即可解锁全部趋势指标',
  buttonText: '立即解锁',
  onButtonTap: () {
    // 处理按钮点击
  },
)
              ''',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUsageSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          content,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
