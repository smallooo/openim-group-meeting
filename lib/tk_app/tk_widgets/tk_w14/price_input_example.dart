import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'price_input_widget.dart';
import 'price_input_data.dart';

/// 价格输入组件示例页面
class PriceInputExample extends StatefulWidget {
  const PriceInputExample({super.key});

  @override
  State<PriceInputExample> createState() => _PriceInputExampleState();
}

class _PriceInputExampleState extends State<PriceInputExample> {
  String _leftInputValue = '';
  String _rightInputValue = '';
  bool _isLeftFocused = false;
  bool _isRightFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('价格输入组件示例'),
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
      child: PriceInputWidget(
        data: PriceInputData(
          leftIcon: Icons.help_outline,
          leftText: '*价格',
          leftInputValue: _leftInputValue,
          leftInputHint: '请输入限价',
          rightInputValue: _rightInputValue,
          rightInputHint: '选填',
        ),
        onLeftInputChanged: (value) {
          setState(() {
            _leftInputValue = value;
          });
        },
        onRightInputChanged: (value) {
          setState(() {
            _rightInputValue = value;
          });
        },
        onLeftFocusChanged: (focused) {
          setState(() {
            _isLeftFocused = focused;
          });
        },
        onRightFocusChanged: (focused) {
          setState(() {
            _isRightFocused = focused;
          });
        },
      ),
    );
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return Center(
      child: PriceInputWidget(
        data: PriceInputData(
          leftIcon: Icons.attach_money,
          leftText: '金额',
          leftInputValue: '100',
          leftInputHint: '输入金额',
          rightInputValue: 'USD',
          rightInputHint: '选填',
        ),
        style: PriceInputStyle(
          width: 350.0,
          height: 120.0,
          backgroundColor: const Color(0xFFF8F9FA),
          borderColor: const Color(0xFFE9ECEF),
          borderRadius: 12.0,
          padding: const EdgeInsets.all(16.0),
          leftIconAreaStyle: const LeftIconAreaStyle(
            width: 100.0,
            height: 50.0,
            backgroundColor: Colors.white,
            borderColor: Color(0xFFD0D0D0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            iconSize: 18.0,
            iconColor: Color(0xFF6A0DAD),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF6A0DAD),
              fontWeight: FontWeight.w600,
            ),
          ),
          topInputAreaStyle: const InputAreaStyle(
            height: 50.0,
            backgroundColor: Colors.white,
            borderColor: Color(0xFFD0D0D0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF999999),
              fontWeight: FontWeight.normal,
            ),
          ),
          bottomInputAreaStyle: const InputAreaStyle(
            height: 50.0,
            backgroundColor: Colors.white,
            borderColor: Color(0xFFD0D0D0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF999999),
              fontWeight: FontWeight.normal,
            ),
          ),
          separatorStyle: const SeparatorStyle(
            width: 20.0,
            height: 1.0,
            backgroundColor: Color(0xFF6A0DAD),
            borderRadius: 0.0,
          ),
        ),
        onLeftInputChanged: (value) {
          _showSnackBar('左侧输入: $value');
        },
        onRightInputChanged: (value) {
          _showSnackBar('右侧输入: $value');
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
          child: PriceInputFactory.createWithPreset(
            data: PriceInputData(
              leftIcon: Icons.info_outline,
              leftText: '简约',
              leftInputValue: '50',
              leftInputHint: '简约输入',
              rightInputValue: 'MIN',
              rightInputHint: '选填',
            ),
            presetStyle: PriceInputPresets.minimalStyle,
            onLeftInputChanged: (value) => _showSnackBar('简约样式左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('简约样式右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 圆润样式
        Center(
          child: PriceInputFactory.createWithPreset(
            data: PriceInputData(
              leftIcon: Icons.circle,
              leftText: '圆润',
              leftInputValue: '75',
              leftInputHint: '圆润输入',
              rightInputValue: 'ROUND',
              rightInputHint: '选填',
            ),
            presetStyle: PriceInputPresets.roundedStyle,
            onLeftInputChanged: (value) => _showSnackBar('圆润样式左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('圆润样式右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 深色样式
        Center(
          child: PriceInputFactory.createWithPreset(
            data: PriceInputData(
              leftIcon: Icons.dark_mode,
              leftText: '深色',
              leftInputValue: '25',
              leftInputHint: '深色输入',
              rightInputValue: 'DARK',
              rightInputHint: '选填',
            ),
            presetStyle: PriceInputPresets.darkStyle,
            onLeftInputChanged: (value) => _showSnackBar('深色样式左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('深色样式右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 边框样式
        Center(
          child: PriceInputFactory.createWithPreset(
            data: PriceInputData(
              leftIcon: Icons.border_all,
              leftText: '边框',
              leftInputValue: '90',
              leftInputHint: '边框输入',
              rightInputValue: 'BORDER',
              rightInputHint: '选填',
            ),
            presetStyle: PriceInputPresets.borderedStyle,
            onLeftInputChanged: (value) => _showSnackBar('边框样式左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('边框样式右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 紧凑样式
        Center(
          child: PriceInputFactory.createWithPreset(
            data: PriceInputData(
              leftIcon: Icons.compress,
              leftText: '紧凑',
              leftInputValue: '60',
              leftInputHint: '紧凑输入',
              rightInputValue: 'COMPACT',
              rightInputHint: '选填',
            ),
            presetStyle: PriceInputPresets.compactStyle,
            onLeftInputChanged: (value) => _showSnackBar('紧凑样式左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('紧凑样式右侧: $value'),
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
          child: PriceInputWidget(
            data: PriceInputData(
              leftIcon: Icons.star,
              leftText: '小',
              leftInputValue: 'S',
              leftInputHint: '小尺寸',
              rightInputValue: 'S',
              rightInputHint: '选填',
            ),
            style: PriceInputStyle(
              width: 200.0,
              height: 80.0,
              leftIconAreaStyle: const LeftIconAreaStyle(
                width: 50.0,
                height: 32.0,
                iconSize: 14.0,
                textStyle: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.normal,
                ),
              ),
              topInputAreaStyle: const InputAreaStyle(
                height: 32.0,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                textStyle: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              bottomInputAreaStyle: const InputAreaStyle(
                height: 32.0,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                textStyle: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              separatorStyle: const SeparatorStyle(
                width: 15.0,
                height: 1.0,
                backgroundColor: Color(0xFFE0E0E0),
              ),
            ),
            onLeftInputChanged: (value) => _showSnackBar('小尺寸左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('小尺寸右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 中等尺寸
        Center(
          child: PriceInputWidget(
            data: PriceInputData(
              leftIcon: Icons.star,
              leftText: '中',
              leftInputValue: 'M',
              leftInputHint: '中等尺寸',
              rightInputValue: 'M',
              rightInputHint: '选填',
            ),
            style: PriceInputStyle(
              width: 280.0,
              height: 100.0,
              leftIconAreaStyle: const LeftIconAreaStyle(
                width: 70.0,
                height: 40.0,
                iconSize: 16.0,
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.normal,
                ),
              ),
              topInputAreaStyle: const InputAreaStyle(
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              bottomInputAreaStyle: const InputAreaStyle(
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                textStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              separatorStyle: const SeparatorStyle(
                width: 18.0,
                height: 1.0,
                backgroundColor: Color(0xFFE0E0E0),
              ),
            ),
            onLeftInputChanged: (value) => _showSnackBar('中等尺寸左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('中等尺寸右侧: $value'),
          ),
        ),
        const SizedBox(height: 16.0),
        
        // 大尺寸
        Center(
          child: PriceInputWidget(
            data: PriceInputData(
              leftIcon: Icons.star,
              leftText: '大',
              leftInputValue: 'L',
              leftInputHint: '大尺寸',
              rightInputValue: 'L',
              rightInputHint: '选填',
            ),
            style: PriceInputStyle(
              width: 350.0,
              height: 120.0,
              leftIconAreaStyle: const LeftIconAreaStyle(
                width: 100.0,
                height: 50.0,
                iconSize: 20.0,
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.normal,
                ),
              ),
              topInputAreaStyle: const InputAreaStyle(
                height: 50.0,
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              bottomInputAreaStyle: const InputAreaStyle(
                height: 50.0,
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                textStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF999999),
                  fontWeight: FontWeight.normal,
                ),
              ),
              separatorStyle: const SeparatorStyle(
                width: 20.0,
                height: 1.0,
                backgroundColor: Color(0xFFE0E0E0),
              ),
            ),
            onLeftInputChanged: (value) => _showSnackBar('大尺寸左侧: $value'),
            onRightInputChanged: (value) => _showSnackBar('大尺寸右侧: $value'),
          ),
        ),
      ],
    );
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return Center(
      child: PriceInputWidget(
        data: PriceInputData(
          leftIcon: Icons.touch_app,
          leftText: '交互',
          leftInputValue: _leftInputValue,
          leftInputHint: '交互式输入',
          rightInputValue: _rightInputValue,
          rightInputHint: '选项',
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        style: PriceInputStyle(
          width: 320.0,
          height: 120.0,
          backgroundColor: Colors.white,
          borderColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
          borderWidth: (_isLeftFocused || _isRightFocused) ? 2.0 : 1.0,
          borderRadius: 12.0,
          boxShadow: (_isLeftFocused || _isRightFocused) ? [
            BoxShadow(
              color: const Color(0xFF007BFF).withValues(alpha: 0.2),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ] : null,
          leftIconAreaStyle: LeftIconAreaStyle(
            width: 90.0,
            height: 44.0,
            backgroundColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFFF0F8FF) : const Color(0xFFF5F5F5),
            borderColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            iconSize: 18.0,
            iconColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFF666666),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFF666666),
              fontWeight: FontWeight.w500,
            ),
          ),
          topInputAreaStyle: InputAreaStyle(
            height: 44.0,
            backgroundColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFFF0F8FF) : const Color(0xFFF5F5F5),
            borderColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF).withValues(alpha: 0.7) : const Color(0xFF999999),
              fontWeight: FontWeight.normal,
            ),
          ),
          bottomInputAreaStyle: InputAreaStyle(
            height: 44.0,
            backgroundColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFFF0F8FF) : const Color(0xFFF5F5F5),
            borderColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
            borderWidth: 1.0,
            borderRadius: 8.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            textStyle: TextStyle(
              fontSize: 16.0,
              color: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF).withValues(alpha: 0.7) : const Color(0xFF999999),
              fontWeight: FontWeight.normal,
            ),
          ),
          separatorStyle: SeparatorStyle(
            width: 20.0,
            height: 1.0,
            backgroundColor: (_isLeftFocused || _isRightFocused) ? const Color(0xFF007BFF) : const Color(0xFFE0E0E0),
            borderRadius: 0.0,
          ),
        ),
        onLeftInputChanged: (value) {
          setState(() {
            _leftInputValue = value;
          });
        },
        onRightInputChanged: (value) {
          setState(() {
            _rightInputValue = value;
          });
        },
        onLeftFocusChanged: (focused) {
          setState(() {
            _isLeftFocused = focused;
          });
        },
        onRightFocusChanged: (focused) {
          setState(() {
            _isRightFocused = focused;
          });
        },
        onLeftInputTap: () {
          _showSnackBar('点击了左侧输入框');
        },
        onRightInputTap: () {
          _showSnackBar('点击了右侧输入框');
        },
        onTap: () {
          _showSnackBar('点击了整个组件');
        },
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
            'PriceInputWidget 是一个包含左侧图标+文本区域和两个编辑框的组合组件，支持完全自定义样式和交互。',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '主要属性',
            '''
• leftIcon: 左侧图标
• leftText: 左侧文本
• leftInputValue: 左侧编辑框内容
• leftInputHint: 左侧编辑框提示文本
• rightInputValue: 右侧编辑框内容
• rightInputHint: 右侧编辑框提示文本
• onLeftInputChanged: 左侧输入内容变化回调
• onRightInputChanged: 右侧输入内容变化回调
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '样式自定义',
            '''
• 支持完全自定义颜色、字体、尺寸等
• 提供预设样式：minimalStyle、roundedStyle、darkStyle、borderedStyle、compactStyle
• 使用 PriceInputStyle 类进行批量样式配置
• 使用 PriceInputData 类进行数据配置
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '代码示例',
            '''
PriceInputWidget(
  data: PriceInputData(
    leftIcon: Icons.help_outline,
    leftText: '*价格',
    leftInputValue: '30',
    leftInputHint: '请输入限价',
    rightInputValue: 'USD',
    rightInputHint: '选项',
  ),
  onLeftInputChanged: (value) {
    // 处理左侧输入变化
  },
  onRightInputChanged: (value) {
    // 处理右侧输入变化
  },
)
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '构建器模式',
            '''
PriceInputBuilder()
  .data(PriceInputData(
    leftIcon: Icons.attach_money,
    leftText: '金额',
  ))
  .style(PriceInputStyle(
    width: 300.0,
    height: 60.0,
  ))
  .onLeftInputChanged((value) {
    // 处理左侧输入变化
  })
  .build()
            ''',
          ),
          const SizedBox(height: 16.0),
          
          _buildUsageSection(
            '工厂模式',
            '''
PriceInputFactory.createWithPreset(
  data: PriceInputData(
    leftIcon: Icons.info_outline,
    leftText: '信息',
  ),
  presetStyle: PriceInputPresets.minimalStyle,
  onLeftInputChanged: (value) {
    // 处理输入变化
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

/// 价格输入组件使用说明页面
class PriceInputUsageGuide extends StatelessWidget {
  const PriceInputUsageGuide({super.key});

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
              'PriceInputWidget 是一个高度可定制的价格输入组件，包含左侧图标+文本区域和两个编辑框区域。该组件支持完全自定义样式、交互行为和布局配置。',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '基本结构',
              '''
组件由五个主要区域组成：
1. 背景容器：外层容器，提供整体背景和边框
2. 左侧图标+文本区域：显示图标和标签文本
3. 左侧编辑框区域：第一个输入区域
4. 间隔线：两个编辑框之间的分隔线
5. 右侧编辑框区域：第二个输入区域

布局采用水平排列，各区域通过固定宽度或比例进行分配。
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '主要属性',
              '''
• 数据属性：leftIcon, leftText, leftInputValue, rightInputValue 等
• 样式属性：width, height, backgroundColor, borderColor 等
• 交互属性：onLeftInputChanged, onRightInputChanged 等
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
• compactStyle: 紧凑样式，节省空间

使用方式：
PriceInputFactory.createWithPreset(
  data: data,
  presetStyle: PriceInputPresets.minimalStyle,
)
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '自定义样式',
              '''
可以通过 PriceInputStyle 类进行批量样式配置：

final style = PriceInputStyle(
  width: 300.0,
  height: 60.0,
  backgroundColor: Colors.white,
  borderRadius: 12.0,
  leftIconAreaWidth: 80.0,
  inputAreaHeight: 40.0,
  // ... 更多样式配置
);

final widget = PriceInputWidget(
  data: data,
  style: style,
);
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '数据管理',
              '''
使用 PriceInputData 类管理组件数据：

final data = PriceInputData(
  leftIcon: Icons.help_outline,
  leftText: '*价格',
  leftInputValue: '30',
  leftInputHint: '请输入限价',
  rightInputValue: 'USD',
  rightInputHint: '选项',
  enabled: true,
  readOnly: false,
);

支持 copyWith 方法进行数据更新：
final newData = data.copyWith(leftInputValue: '50');
              ''',
            ),
            const SizedBox(height: 24.0),
            
            _buildUsageSection(
              '最佳实践',
              '''
1. 合理设置组件尺寸，确保在不同屏幕上的适配
2. 使用预设样式作为基础，再进行微调
3. 注意各区域的宽度比例，保持视觉平衡
4. 根据使用场景选择合适的交互方式
5. 考虑无障碍访问，提供合适的提示文本
6. 使用构建器模式或工厂模式提高代码可读性
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
