import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_display_widget.dart';
import 'input_display_data.dart';

/// 输入显示组件示例页面
class InputDisplayExample extends StatefulWidget {
  const InputDisplayExample({super.key});

  @override
  State<InputDisplayExample> createState() => _InputDisplayExampleState();
}

class _InputDisplayExampleState extends State<InputDisplayExample> {
  String _inputValue = '30';
  String _textValue = 'U';
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('输入显示组件示例'),
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
        color: Colors.black,
      ),
    );
  }

  /// 基础示例
  Widget _buildBasicExample() {
    return Center(
      child: InputDisplayWidget(
        width: 280.0,
        height: 60.0,
        inputValue: _inputValue,
        inputHint: '请输入数量',
        textValue: _textValue,
        onInputChanged: (value) {
          setState(() {
            _inputValue = value;
          });
        },
        onTextAreaTap: () {
          _showSnackBar('点击了文本框区域');
        },
        onFocusChanged: (focused) {
          setState(() {
            _isFocused = focused;
          });
        },
      ),
    );
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return Center(
      child: InputDisplayWidget(
        width: 320.0,
        height: 70.0,
        backgroundColor: const Color(0xFFF8F9FA),
        borderColor: const Color(0xFFE9ECEF),
        borderRadius: 12.0,
        padding: const EdgeInsets.all(16.0),
        inputAreaWidthRatio: 0.75,
        inputAreaHeight: 50.0,
        inputAreaBackgroundColor: Colors.white,
        inputAreaBorderColor: const Color(0xFFD0D0D0),
        inputAreaBorderWidth: 1.0,
        inputAreaBorderRadius: 8.0,
        inputAreaPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        inputTextSpacing: 12.0,
        textAreaWidth: 50.0,
        textAreaHeight: 50.0,
        textAreaBackgroundColor: const Color(0xFF6A0DAD),
        textAreaBorderRadius: 8.0,
        textAreaPadding: const EdgeInsets.all(8.0),
        inputValue: '100',
        inputHint: '输入金额',
        inputTextStyle: const TextStyle(
          fontSize: 18.0,
          color: Colors.black87,
          fontWeight: FontWeight.w600,
        ),
        textValue: 'USD',
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        onTextAreaTap: () {
          _showSnackBar('点击了USD文本框');
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
          child: InputDisplayPresets.minimalStyle(
            inputValue: '50',
            inputHint: '简约输入',
            textValue: 'MIN',
            onTextAreaTap: () => _showSnackBar('简约样式按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 圆润样式
        Center(
          child: InputDisplayPresets.roundedStyle(
            inputValue: '75',
            inputHint: '圆润输入',
            textValue: 'ROUND',
            onTextAreaTap: () => _showSnackBar('圆润样式按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 深色样式
        Center(
          child: InputDisplayPresets.darkStyle(
            inputValue: '25',
            inputHint: '深色输入',
            textValue: 'DARK',
            onTextAreaTap: () => _showSnackBar('深色样式按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 边框样式
        Center(
          child: InputDisplayPresets.borderedStyle(
            inputValue: '90',
            inputHint: '边框输入',
            textValue: 'BORDER',
            onTextAreaTap: () => _showSnackBar('边框样式按钮'),
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
          child: InputDisplayWidget(
            width: 200.0,
            height: 40.0,
            inputAreaWidthRatio: 0.6,
            inputAreaHeight: 32.0,
            inputTextSpacing: 6.0,
            textAreaWidth: 32.0,
            textAreaHeight: 32.0,
            inputValue: 'S',
            textValue: 'S',
            onTextAreaTap: () => _showSnackBar('小尺寸按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 中等尺寸
        Center(
          child: InputDisplayWidget(
            width: 280.0,
            height: 50.0,
            inputAreaWidthRatio: 0.7,
            inputAreaHeight: 40.0,
            inputTextSpacing: 8.0,
            textAreaWidth: 40.0,
            textAreaHeight: 40.0,
            inputValue: 'M',
            textValue: 'M',
            onTextAreaTap: () => _showSnackBar('中等尺寸按钮'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 大尺寸
        Center(
          child: InputDisplayWidget(
            width: 350.0,
            height: 70.0,
            inputAreaWidthRatio: 0.8,
            inputAreaHeight: 50.0,
            inputTextSpacing: 12.0,
            textAreaWidth: 50.0,
            textAreaHeight: 50.0,
            inputValue: 'L',
            textValue: 'L',
            onTextAreaTap: () => _showSnackBar('大尺寸按钮'),
          ),
        ),
      ],
    );
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return Center(
      child: InputDisplayWidget(
        width: 300.0,
        height: 60.0,
        backgroundColor: Colors.white,
        borderColor: _isFocused ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
        borderWidth: _isFocused ? 2.0 : 1.0,
        borderRadius: 12.0,
        boxShadow: _isFocused ? [
          BoxShadow(
            color: const Color(0xFF007BFF).withOpacity(0.2),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ] : null,
        inputAreaWidthRatio: 0.7,
        inputAreaHeight: 44.0,
        inputAreaBackgroundColor: _isFocused ? const Color(0xFFF0F8FF) : Colors.white,
        inputAreaBorderColor: _isFocused ? const Color(0xFF007BFF) : const Color(0xFFD0D0D0),
        inputAreaBorderWidth: 1.0,
        inputAreaBorderRadius: 8.0,
        inputAreaPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        inputTextSpacing: 8.0,
        textAreaWidth: 44.0,
        textAreaHeight: 44.0,
        textAreaBackgroundColor: const Color(0xFF007BFF),
        textAreaBorderRadius: 8.0,
        textAreaPadding: const EdgeInsets.all(8.0),
        inputValue: _inputValue,
        inputHint: '交互式输入',
        inputTextStyle: TextStyle(
          fontSize: 16.0,
          color: _isFocused ? const Color(0xFF007BFF) : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
        textValue: 'GO',
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        onInputChanged: (value) {
          setState(() {
            _inputValue = value;
          });
        },
        onTextAreaTap: () {
          _showSnackBar('点击了GO按钮！');
        },
        onFocusChanged: (focused) {
          setState(() {
            _isFocused = focused;
          });
        },
        autofocus: false,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.left,
      ),
    );
  }

  /// 使用说明
  Widget _buildUsageGuide() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUsageSection(
            '基本用法',
            'InputDisplayWidget 是一个包含编辑框和文本框的组合组件，支持完全自定义样式和交互。',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '主要属性',
            '''
• inputValue: 输入框内容
• inputHint: 输入框提示文本
• textValue: 文本框内容
• onInputChanged: 输入内容变化回调
• onTextAreaTap: 文本框点击回调
• onFocusChanged: 焦点变化回调
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '样式自定义',
            '''
• 支持完全自定义颜色、字体、尺寸等
• 提供预设样式：minimalStyle、roundedStyle、darkStyle、borderedStyle
• 使用 InputDisplayStyle 类进行批量样式配置
• 使用 InputDisplayData 类进行数据配置
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '代码示例',
            '''
InputDisplayWidget(
  width: 280.0,
  height: 60.0,
  inputValue: '30',
  inputHint: '请输入数量',
  textValue: 'U',
  onInputChanged: (value) {
    // 处理输入变化
  },
  onTextAreaTap: () {
    // 处理文本框点击
  },
)
            ''',
          ),
        ],
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
            fontSize: 16.0,
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

/// 输入显示组件使用说明页面
class InputDisplayUsageGuide extends StatelessWidget {
  const InputDisplayUsageGuide({super.key});

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
              '组件概述',
              'InputDisplayWidget 是一个高度可定制的输入显示组件，包含编辑框区域和文本框区域两个部分。该组件支持完全自定义样式、交互行为和布局配置。',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '基本结构',
              '''
组件由三个主要区域组成：
1. 编辑框背景：外层容器，提供整体背景和边框
2. 编辑框区域：左侧输入区域，支持文本输入和编辑
3. 文本框区域：右侧显示区域，可点击或仅显示

布局采用水平排列，编辑框区域和文本框区域通过比例或固定宽度进行分配。
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '主要属性',
              '''
• 尺寸属性：width, height, inputAreaWidthRatio, textAreaWidth 等
• 样式属性：backgroundColor, borderColor, borderRadius 等
• 内容属性：inputValue, inputHint, textValue 等
• 交互属性：onInputChanged, onTextAreaTap, onFocusChanged 等
• 行为属性：enabled, readOnly, autofocus 等
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '预设样式',
              '''
• minimalStyle: 简约样式，适合简洁界面
• roundedStyle: 圆润样式，更加柔和的视觉效果
• darkStyle: 深色样式，适合深色主题
• borderedStyle: 边框样式，突出边框效果

使用方式：
InputDisplayPresets.minimalStyle.applyTo(widget, data)
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '自定义样式',
              '''
可以通过 InputDisplayStyle 类进行批量样式配置：

final style = InputDisplayStyle(
  width: 300.0,
  height: 60.0,
  backgroundColor: Colors.white,
  borderRadius: 12.0,
  inputAreaWidthRatio: 0.7,
  textAreaWidth: 50.0,
  // ... 更多样式配置
);

final widget = style.applyTo(InputDisplayWidget(), data);
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '数据管理',
              '''
使用 InputDisplayData 类管理组件数据：

final data = InputDisplayData(
  inputValue: '30',
  inputHint: '请输入数量',
  textValue: 'U',
  enabled: true,
  readOnly: false,
);

支持 copyWith 方法进行数据更新：
final newData = data.copyWith(inputValue: '50');
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '最佳实践',
              '''
1. 合理设置组件尺寸，确保在不同屏幕上的适配
2. 使用预设样式作为基础，再进行微调
3. 注意输入框和文本框的宽度比例，保持视觉平衡
4. 根据使用场景选择合适的交互方式
5. 考虑无障碍访问，提供合适的提示文本
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