import 'package:flutter/material.dart';
import 'view_more_button_widget.dart';

/// 查看更多按钮组件示例
/// 展示各种使用方式和自定义选项
class ViewMoreButtonExample extends StatefulWidget {
  const ViewMoreButtonExample({super.key});

  @override
  State<ViewMoreButtonExample> createState() => _ViewMoreButtonExampleState();
}

class _ViewMoreButtonExampleState extends State<ViewMoreButtonExample> {
  bool _isEnabled = true;
  bool _isVisible = true;
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('查看更多按钮组件示例'),
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
            
            // 预设样式示例
            _buildSectionTitle('预设样式示例'),
            const SizedBox(height: 16.0),
            _buildPresetStyleExample(),
            
            const SizedBox(height: 32.0),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式示例'),
            const SizedBox(height: 16.0),
            _buildCustomStyleExample(),
            
            const SizedBox(height: 32.0),
            
            // 不同尺寸示例
            _buildSectionTitle('不同尺寸示例'),
            const SizedBox(height: 16.0),
            _buildSizeExample(),
            
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
            
            const SizedBox(height: 32.0),
            
            // 状态示例
            _buildSectionTitle('状态示例'),
            const SizedBox(height: 16.0),
            _buildStateExample(),
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
    return const Center(
      child: ViewMoreButtonWidget(
        text: '查看更多',
        rightIcon: Icon(Icons.chevron_right),
      ),
    );
  }

  /// 预设样式示例
  Widget _buildPresetStyleExample() {
    return Column(
      children: [
        // 默认样式
        const ViewMoreButtonWidget(
          text: '默认样式',
          rightIcon: Icon(Icons.chevron_right),
        ),
        
        const SizedBox(height: 12.0),
        
        // 主要样式
        ViewMoreButtonWidget(
          text: '主要样式',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xFF2196F3),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: Colors.white,
        ),
        
        const SizedBox(height: 12.0),
        
        // 次要样式
        ViewMoreButtonWidget(
          text: '次要样式',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: Colors.transparent,
          textStyle: const TextStyle(
            color: Color(0xFF2196F3),
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: const Color(0xFF2196F3),
          borderColor: const Color(0xFF2196F3),
          borderWidth: 1.0,
        ),
        
        const SizedBox(height: 12.0),
        
        // 小尺寸样式
        ViewMoreButtonWidget(
          text: '小尺寸',
          rightIcon: const Icon(Icons.chevron_right),
          backgroundColor: const Color(0xFFF5F5F5),
          textStyle: const TextStyle(
            color: Color(0xFF666666),
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: const Color(0xFF666666),
          rightIconSize: 14.0,
          textIconSpacing: 6.0,
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          borderRadius: 6.0,
        ),
        
        const SizedBox(height: 12.0),
        
        // 大尺寸样式
        ViewMoreButtonWidget(
          text: '大尺寸样式',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xFFF5F5F5),
          textStyle: const TextStyle(
            color: Color(0xFF666666),
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: const Color(0xFF666666),
          rightIconSize: 18.0,
          textIconSpacing: 10.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          borderRadius: 10.0,
        ),
      ],
    );
  }

  /// 自定义样式示例
  Widget _buildCustomStyleExample() {
    return Column(
      children: [
        // 圆角卡片样式
        ViewMoreButtonWidget(
          text: '圆角卡片样式',
          rightIcon: const Icon(Icons.chevron_right),
          backgroundColor: const Color(0xFFE3F2FD),
          textStyle: const TextStyle(
            color: Color(0xFF1976D2),
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          rightIconColor: const Color(0xFF1976D2),
          borderRadius: 20.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        ),
        
        const SizedBox(height: 12.0),
        
        // 带阴影样式
        ViewMoreButtonWidget(
          text: '带阴影样式',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: Colors.white,
          textStyle: const TextStyle(
            color: Color(0xFF333333),
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: const Color(0xFF333333),
          borderRadius: 12.0,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        
        const SizedBox(height: 12.0),
        
        // 渐变背景样式
        ViewMoreButtonWidget(
          text: '渐变背景样式',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xFF4CAF50),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          rightIconColor: Colors.white,
          borderRadius: 25.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        ),
        
        const SizedBox(height: 12.0),
        
        // 自定义图标样式
        ViewMoreButtonWidget(
          text: '自定义图标样式',
          rightIcon: Container(
            width: 16.0,
            height: 16.0,
            decoration: const BoxDecoration(
              color: Color(0xFFFF9800),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 10.0,
            ),
          ),
          backgroundColor: const Color(0xFFFFF3E0),
          textStyle: const TextStyle(
            color: Color(0xFFE65100),
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          borderRadius: 15.0,
        ),
      ],
    );
  }

  /// 不同尺寸示例
  Widget _buildSizeExample() {
    return Column(
      children: [
        // 小尺寸
        ViewMoreButtonWidget(
          text: '小',
          rightIcon: const Icon(Icons.chevron_right),
          height: 32.0,
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          textStyle: const TextStyle(fontSize: 12.0),
          rightIconSize: 14.0,
        ),
        
        const SizedBox(height: 8.0),
        
        // 中等尺寸
        ViewMoreButtonWidget(
          text: '中等尺寸',
          rightIcon: const Icon(Icons.chevron_right),
          height: 40.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          textStyle: const TextStyle(fontSize: 14.0),
          rightIconSize: 16.0,
        ),
        
        const SizedBox(height: 8.0),
        
        // 大尺寸
        ViewMoreButtonWidget(
          text: '大尺寸按钮',
          rightIcon: const Icon(Icons.chevron_right),
          height: 48.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          textStyle: const TextStyle(fontSize: 16.0),
          rightIconSize: 18.0,
        ),
        
        const SizedBox(height: 8.0),
        
        // 固定宽度
        ViewMoreButtonWidget(
          text: '固定宽度',
          rightIcon: const Icon(Icons.chevron_right),
          width: 200.0,
          height: 40.0,
        ),
      ],
    );
  }

  /// 配置化示例
  Widget _buildConfigExample() {
    // 创建配置
    const config = ViewMoreButtonConfig(
      backgroundColor: Color(0xFF9C27B0),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
      rightIconColor: Colors.white,
      rightIconSize: 16.0,
      textIconSpacing: 8.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      borderRadius: 8.0,
    );

    // 创建数据
    const data = ViewMoreButtonData(
      text: '配置化按钮',
      rightIcon: Icon(Icons.arrow_forward),
      onTap: null,
    );

    // 应用配置
    final widget = const ViewMoreButtonWidget(text: '');
    return config.applyTo(widget, data);
  }

  /// 交互示例
  Widget _buildInteractiveExample() {
    return Column(
      children: [
        // 可点击按钮
        ViewMoreButtonWidget(
          text: '点击我',
          rightIcon: const Icon(Icons.chevron_right),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('按钮被点击了！'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
        
        const SizedBox(height: 12.0),
        
        // 带导航的按钮
        ViewMoreButtonWidget(
          text: '查看详情',
          rightIcon: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xFF2196F3),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          rightIconColor: Colors.white,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ViewMoreButtonUsageGuide(),
              ),
            );
          },
        ),
      ],
    );
  }

  /// 状态示例
  Widget _buildStateExample() {
    return Column(
      children: [
        // 控制按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isEnabled = !_isEnabled;
                });
              },
              child: Text(_isEnabled ? '禁用' : '启用'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Text(_isVisible ? '隐藏' : '显示'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.5 : 1.0;
                });
              },
              child: Text(_opacity == 1.0 ? '半透明' : '不透明'),
            ),
          ],
        ),
        
        const SizedBox(height: 16.0),
        
        // 状态按钮
        ViewMoreButtonWidget(
          text: '状态控制按钮',
          rightIcon: const Icon(Icons.chevron_right),
          enabled: _isEnabled,
          visible: _isVisible,
          opacity: _opacity,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('状态按钮被点击了！'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
        
        const SizedBox(height: 12.0),
        
        // 禁用状态
        const ViewMoreButtonWidget(
          text: '禁用状态',
          rightIcon: Icon(Icons.chevron_right),
          enabled: false,
        ),
        
        const SizedBox(height: 12.0),
        
        // 隐藏状态
        const ViewMoreButtonWidget(
          text: '隐藏状态',
          rightIcon: Icon(Icons.chevron_right),
          visible: false,
        ),
      ],
    );
  }
}

/// 查看更多按钮使用说明
class ViewMoreButtonUsageGuide extends StatelessWidget {
  const ViewMoreButtonUsageGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('查看更多按钮使用说明'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '查看更多按钮组件使用说明',
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
              'ViewMoreButtonWidget(\n'
              '  text: "查看更多",\n'
              '  rightIcon: Icon(Icons.chevron_right),\n'
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
              '支持自定义背景色、文字样式、图标、圆角、边框、阴影等所有视觉属性',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '3. 预设样式：',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'ViewMoreButtonStyles.defaultStyle\n'
              'ViewMoreButtonStyles.primaryStyle\n'
              'ViewMoreButtonStyles.secondaryStyle\n'
              'ViewMoreButtonStyles.smallStyle\n'
              'ViewMoreButtonStyles.largeStyle',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
                fontFamily: 'monospace',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '4. 配置化使用：',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '使用 ViewMoreButtonConfig 和 ViewMoreButtonData 进行配置化管理',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '5. 交互支持：',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '支持 onTap 回调、启用/禁用状态、显示/隐藏状态、透明度控制等',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
