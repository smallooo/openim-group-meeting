import 'package:flutter/material.dart';
import 'trader_intro_widget.dart';
import 'trader_intro_data.dart';

/// 交易员简介编辑组件示例页面
class TraderIntroExample extends StatefulWidget {
  const TraderIntroExample({Key? key}) : super(key: key);
  
  @override
  State<TraderIntroExample> createState() => _TraderIntroExampleState();
}

class _TraderIntroExampleState extends State<TraderIntroExample> {
  String _content = '';
  String _builderContent = '';
  bool _isEnabled = true;
  bool _showCharCount = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('交易员简介编辑组件示例'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 基础示例
            _buildSectionTitle('基础示例'),
            const SizedBox(height: 16),
            TraderIntroWidget(
              data: TraderIntroData(
                title: '交易员简介',
                placeholder: '请简单介绍您得交易策略和经验',
                content: _content,
                maxLength: 200,
                enabled: _isEnabled,
              ),
              onChanged: (value) {
                setState(() {
                  _content = value;
                });
              },
              showCharCount: _showCharCount,
            ),
            
            const SizedBox(height: 32),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式示例'),
            const SizedBox(height: 16),
            TraderIntroWidget(
              data: const TraderIntroData(
                title: '自定义样式简介',
                placeholder: '这是一个自定义样式的输入框',
                content: '',
                maxLength: 150,
              ),
              style: const TraderIntroStyle(
                backgroundColor: Color(0xFFF5F5F5),
                borderColor: Colors.blue,
                borderWidth: 2.0,
                borderRadius: 12.0,
                padding: EdgeInsets.all(16),
                minHeight: 100,
                maxHeight: 150,
              ),
              onChanged: (value) {
                print('自定义样式输入: $value');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 使用Builder模式示例
            _buildSectionTitle('Builder模式示例'),
            const SizedBox(height: 16),
            TraderIntroBuilder()
                .title('Builder模式简介')
                .placeholder('使用Builder模式创建组件')
                .content(_builderContent)
                .maxLength(100)
                .minLines(3)
                .maxLines(6)
                .onChanged((value) {
                  setState(() {
                    _builderContent = value;
                  });
                })
                .build(),
            
            const SizedBox(height: 32),
            
            // 自动扩展示例
            _buildSectionTitle('自动扩展示例'),
            const SizedBox(height: 16),
            TraderIntroBuilder()
                .title('自动扩展简介')
                .placeholder('这个输入框会自动扩展高度')
                .content('')
                .maxLength(150)
                .expands(true)
                .onChanged((value) {
                  print('自动扩展输入: $value');
                })
                .build(),
            
            const SizedBox(height: 32),
            
            // 控制面板
            _buildSectionTitle('控制面板'),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: const Text('启用编辑'),
                      value: _isEnabled,
                      onChanged: (value) {
                        setState(() {
                          _isEnabled = value;
                        });
                      },
                    ),
                    SwitchListTile(
                      title: const Text('显示字符计数'),
                      value: _showCharCount,
                      onChanged: (value) {
                        setState(() {
                          _showCharCount = value;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _content = '';
                                _builderContent = '';
                              });
                            },
                            child: const Text('清空内容'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _content = '这是一个预设的交易策略介绍内容，用于演示组件的显示效果。';
                                _builderContent = 'Builder模式预设内容示例。';
                              });
                            },
                            child: const Text('预设内容'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 不同主题示例
            _buildSectionTitle('不同主题示例'),
            const SizedBox(height: 16),
            
            // 深色主题
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: ThemeData.dark(),
                child: TraderIntroWidget(
                  data: const TraderIntroData(
                    title: '深色主题简介',
                    placeholder: '深色主题下的输入框',
                    content: '',
                    maxLength: 100,
                  ),
                  style: const TraderIntroStyle(
                    backgroundColor: Color(0xFF2D2D2D),
                    borderColor: Colors.blue,
                    borderRadius: 8.0,
                    minHeight: 80,
                  ),
                  onChanged: (value) {
                    print('深色主题输入: $value');
                  },
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // 圆角主题
            TraderIntroWidget(
              data: const TraderIntroData(
                title: '圆角主题简介',
                placeholder: '大圆角边框的输入框',
                content: '',
                maxLength: 80,
              ),
              style: const TraderIntroStyle(
                backgroundColor: Color(0xFFF0F8FF),
                borderColor: Colors.green,
                borderWidth: 1.5,
                borderRadius: 20.0,
                padding: EdgeInsets.all(20),
                minHeight: 100,
              ),
              onChanged: (value) {
                print('圆角主题输入: $value');
              },
            ),
            
            const SizedBox(height: 32),
            
            // 使用说明
            _buildSectionTitle('使用说明'),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '组件特性：',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('• 支持完全自定义样式和配置'),
                    Text('• 支持Builder模式，提供更简洁的API'),
                    Text('• 支持字符计数显示'),
                    Text('• 支持焦点状态管理'),
                    Text('• 支持内容变化回调'),
                    Text('• 支持最大/最小行数限制'),
                    Text('• 支持自动调整高度（expands模式）'),
                    Text('• 响应式设计，适配不同屏幕'),
                    Text('• 自动参数验证，防止配置冲突'),
                    SizedBox(height: 16),
                    Text(
                      '布局说明：',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('1. 标题文本 - 位于组件顶部'),
                    Text('2. 编辑框背景 - 包含边框和背景色'),
                    Text('3. 编辑框区域 - 实际的文本输入区域'),
                    Text('4. 编辑框提示语 - 占位符文本，位于输入区域左上角'),
                    SizedBox(height: 16),
                    Text(
                      '参数说明：',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('• 当expands=true时，maxLines和minLines会自动设为null'),
                    Text('• 当expands=false时，可以使用maxLines和minLines控制行数'),
                    Text('• 组件会自动验证参数组合，避免Flutter框架错误'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
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
}
