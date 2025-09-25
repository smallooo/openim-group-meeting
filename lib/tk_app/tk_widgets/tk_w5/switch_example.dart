import 'package:flutter/material.dart';
import 'switch_widget.dart';

/// 开关组件使用示例
class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _basicSwitch = false;
  bool _customSwitch = true;
  bool _disabledSwitch = false;
  bool _withIconSwitch = false;
  bool _withTrailingSwitch = false;
  bool _primarySwitch = false;
  bool _secondarySwitch = false;
  bool _successSwitch = false;
  bool _warningSwitch = false;
  bool _dangerSwitch = false;
  bool _minimalSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('开关组件示例'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 基础用法示例
            _buildSection(
              '基础用法',
              [
                SwitchWidget(
                  text: '勿扰模式',
                  value: _basicSwitch,
                  onChanged: (value) {
                    setState(() {
                      _basicSwitch = value;
                    });
                  },
                ),
                SwitchWidget(
                  text: '自动更新',
                  value: _customSwitch,
                  onChanged: (value) {
                    setState(() {
                      _customSwitch = value;
                    });
                  },
                ),
                SwitchWidget(
                  text: '已禁用的开关',
                  value: _disabledSwitch,
                  enabled: false,
                ),
              ],
            ),

            // 自定义样式示例
            _buildSection(
              '自定义样式',
              [
                SwitchWidget(
                  text: '自定义颜色开关',
                  value: _customSwitch,
                  onChanged: (value) {
                    setState(() {
                      _customSwitch = value;
                    });
                  },
                  activeColor: Colors.purple,
                  inactiveColor: Colors.grey[300],
                  backgroundColor: Colors.white,
                  borderRadius: 12.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 16.0,
                  ),
                ),
                SwitchWidget(
                  text: '大尺寸开关',
                  value: _customSwitch,
                  onChanged: (value) {
                    setState(() {
                      _customSwitch = value;
                    });
                  },
                  switchSize: 30.0,
                  backgroundColor: Colors.blue[50],
                  borderRadius: 8.0,
                ),
              ],
            ),

            // 带图标示例
            _buildSection(
              '带图标',
              [
                SwitchWidget(
                  text: '通知设置',
                  value: _withIconSwitch,
                  onChanged: (value) {
                    setState(() {
                      _withIconSwitch = value;
                    });
                  },
                  leadingIcon: const Icon(Icons.notifications),
                  leadingIconColor: Colors.blue,
                ),
                SwitchWidget(
                  text: '隐私设置',
                  value: _withIconSwitch,
                  onChanged: (value) {
                    setState(() {
                      _withIconSwitch = value;
                    });
                  },
                  leadingIcon: const Icon(Icons.privacy_tip),
                  leadingIconColor: Colors.red,
                ),
                SwitchWidget(
                  text: 'WiFi 设置',
                  value: _withTrailingSwitch,
                  onChanged: (value) {
                    setState(() {
                      _withTrailingSwitch = value;
                    });
                  },
                  leadingIcon: const Icon(Icons.wifi),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ],
            ),

            // 预设样式示例
            _buildSection(
              '预设样式',
              [
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.primary,
                  text: '主要样式开关',
                  value: _primarySwitch,
                  onChanged: (value) {
                    setState(() {
                      _primarySwitch = value;
                    });
                  },
                ),
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.secondary,
                  text: '次要样式开关',
                  value: _secondarySwitch,
                  onChanged: (value) {
                    setState(() {
                      _secondarySwitch = value;
                    });
                  },
                ),
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.success,
                  text: '成功样式开关',
                  value: _successSwitch,
                  onChanged: (value) {
                    setState(() {
                      _successSwitch = value;
                    });
                  },
                ),
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.warning,
                  text: '警告样式开关',
                  value: _warningSwitch,
                  onChanged: (value) {
                    setState(() {
                      _warningSwitch = value;
                    });
                  },
                ),
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.danger,
                  text: '危险样式开关',
                  value: _dangerSwitch,
                  onChanged: (value) {
                    setState(() {
                      _dangerSwitch = value;
                    });
                  },
                ),
                PresetSwitchWidget(
                  presetStyle: SwitchPresetStyle.minimal,
                  text: '极简样式开关',
                  value: _minimalSwitch,
                  onChanged: (value) {
                    setState(() {
                      _minimalSwitch = value;
                    });
                  },
                ),
              ],
            ),

            // 带分割线示例
            _buildSection(
              '带分割线',
              [
                SwitchWidget(
                  text: '设置项 1',
                  value: _basicSwitch,
                  onChanged: (value) {
                    setState(() {
                      _basicSwitch = value;
                    });
                  },
                  showDivider: true,
                ),
                SwitchWidget(
                  text: '设置项 2',
                  value: _customSwitch,
                  onChanged: (value) {
                    setState(() {
                      _customSwitch = value;
                    });
                  },
                  showDivider: true,
                ),
                SwitchWidget(
                  text: '设置项 3',
                  value: _disabledSwitch,
                  enabled: false,
                ),
              ],
            ),

            // 完全自定义示例
            _buildSection(
              '完全自定义',
              [
                SwitchWidget(
                  text: '完全自定义开关',
                  value: _customSwitch,
                  onChanged: (value) {
                    setState(() {
                      _customSwitch = value;
                    });
                  },
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.grey[200],
                  thumbColor: Colors.white,
                  backgroundColor: Colors.deepPurple[50],
                  borderRadius: 16.0,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  leadingIcon: const Icon(Icons.settings),
                  leadingIconColor: Colors.deepPurple,
                  leadingIconSize: 28.0,
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: _customSwitch ? Colors.deepPurple : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      _customSwitch ? '开启' : '关闭',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onTap: () {
                    _showSnackBar(context, '点击了自定义开关');
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(children: children),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
