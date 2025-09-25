import 'package:flutter/material.dart';
import 'segment_control_widget.dart';
import 'segment_control_data.dart';

/// 分段控制器示例页面
class SegmentControlExample extends StatefulWidget {
  const SegmentControlExample({super.key});

  @override
  State<SegmentControlExample> createState() => _SegmentControlExampleState();
}

class _SegmentControlExampleState extends State<SegmentControlExample> {
  int _selectedIndex1 = 0;
  int _selectedIndex2 = 0;
  int _selectedIndex3 = 1;
  int _selectedIndex4 = 0;
  int _selectedIndex5 = 0;
  int _selectedIndexSwipe = 0; // 滑动效果示例的独立状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('分段控制器示例'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 默认样式示例
            _buildSectionTitle('默认样式（短线、中线、长线）- 滑动效果'),
            const SizedBox(height: 16),
            Center(
              child: SegmentControlWidget(
                data: SegmentControlData.defaultData().copyWith(
                  selectedIndex: _selectedIndex1,
                ),
                width: 200,
                height: 40,
                onSelectionChanged: (index) {
                  setState(() {
                    _selectedIndex1 = index;
                  });
                  _showSnackBar('选择了: ${['短线', '中线', '长线'][index]}');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 滑动效果展示
            _buildSectionTitle('滑动效果展示'),
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    '点击任意选项，观察白色背景的滑动效果',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SegmentControlWidget(
                    data: SegmentControlData.custom(
                      segments: ['选项A', '选项B', '选项C'],
                      selectedIndex: _selectedIndexSwipe,
                    ),
                    width: 240,
                    height: 45,
                    selectedBackgroundColor: Colors.white,
                    unselectedBackgroundColor: Colors.purple,
                    selectedTextColor: Colors.purple,
                    unselectedTextColor: Colors.white,
                    borderColor: Colors.purple,
                    onSelectionChanged: (index) {
                      setState(() {
                        _selectedIndexSwipe = index;
                      });
                      _showSnackBar('滑动到: ${['选项A', '选项B', '选项C'][index]}');
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 两个选项示例
            _buildSectionTitle('两个选项示例'),
            const SizedBox(height: 16),
            Center(
              child: SegmentControlWidget(
                data: SegmentControlData.twoOptions().copyWith(
                  segments: ['买入', '卖出'],
                  selectedIndex: _selectedIndex2,
                ),
                onSelectionChanged: (index) {
                  setState(() {
                    _selectedIndex2 = index;
                  });
                  _showSnackBar('选择了: ${['买入', '卖出'][index]}');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 自定义样式示例
            _buildSectionTitle('自定义样式'),
            const SizedBox(height: 16),
            Center(
              child: SegmentControlWidget(
                data: SegmentControlData.custom(
                  segments: ['日线', '周线', '月线'],
                  selectedIndex: _selectedIndex3,
                ),
                width: 200,
                height: 45,
                borderRadius: 25,
                selectedBackgroundColor: Colors.blue,
                unselectedBackgroundColor: Colors.grey[300],
                selectedTextColor: Colors.white,
                unselectedTextColor: Colors.grey[600],
                borderColor: Colors.blue,
                borderWidth: 2,
                selectedTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                onSelectionChanged: (index) {
                  setState(() {
                    _selectedIndex3 = index;
                  });
                  _showSnackBar('选择了: ${['日线', '周线', '月线'][index]}');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 深色主题示例
            _buildSectionTitle('深色主题'),
            const SizedBox(height: 16),
            Center(
              child: SegmentControlWidget(
                data: SegmentControlData.custom(
                  segments: ['技术分析', '基本面', '消息面'],
                  selectedIndex: _selectedIndex4,
                ),
                width: 250,
                height: 50,
                borderRadius: 30,
                selectedBackgroundColor: Colors.orange,
                unselectedBackgroundColor: Colors.grey[800],
                selectedTextColor: Colors.white,
                unselectedTextColor: Colors.grey[300],
                borderColor: Colors.orange,
                borderWidth: 1.5,
                selectedBorderRadius: 28,
                unselectedBorderRadius: 28,
                selectedTextStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                unselectedTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                onSelectionChanged: (index) {
                  setState(() {
                    _selectedIndex4 = index;
                  });
                  _showSnackBar('选择了: ${['技术分析', '基本面', '消息面'][index]}');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 紧凑样式示例
            _buildSectionTitle('紧凑样式'),
            const SizedBox(height: 16),
            Center(
              child: SegmentControlWidget(
                data: SegmentControlData.custom(
                  segments: ['A股', '港股', '美股'],
                  selectedIndex: _selectedIndex5,
                ),
                width: 180,
                height: 35,
                borderRadius: 18,
                selectedBackgroundColor: Colors.green,
                unselectedBackgroundColor: Colors.grey[200],
                selectedTextColor: Colors.white,
                unselectedTextColor: Colors.grey[600],
                borderColor: Colors.green,
                borderWidth: 1,
                segmentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                selectedTextStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
                unselectedTextStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                onSelectionChanged: (index) {
                  setState(() {
                    _selectedIndex5 = index;
                  });
                  _showSnackBar('选择了: ${['A股', '港股', '美股'][index]}');
                },
              ),
            ),
            
            const SizedBox(height: 32),
            
            // 使用构建器的示例
            _buildSectionTitle('使用构建器API'),
            const SizedBox(height: 16),
            Column(
              children: [
                // 默认构建器
                SegmentControlBuilder.createDefault(
                  selectedIndex: _selectedIndex1,
                  onSelectionChanged: (index) {
                    setState(() {
                      _selectedIndex1 = index;
                    });
                    _showSnackBar('构建器 - 选择了: ${['短线', '中线', '长线'][index]}');
                  },
                ),
                
                const SizedBox(height: 16),
                
                // 两个选项构建器
                SegmentControlBuilder.createTwoOptions(
                  segments: ['看涨', '看跌'],
                  selectedIndex: _selectedIndex2,
                  selectedBackgroundColor: Colors.red,
                  unselectedBackgroundColor: Colors.grey[300],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    setState(() {
                      _selectedIndex2 = index;
                    });
                    _showSnackBar('构建器 - 选择了: ${['看涨', '看跌'][index]}');
                  },
                ),
                
                const SizedBox(height: 16),
                
                // 自定义构建器
                SegmentControlBuilder.createCustom(
                  segments: ['1分钟', '5分钟', '15分钟', '30分钟'],
                  selectedIndex: _selectedIndex3,
                  width: 280,
                  height: 45,
                  selectedBackgroundColor: Colors.purple,
                  unselectedBackgroundColor: Colors.grey[100],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.purple,
                  borderColor: Colors.purple,
                  onSelectionChanged: (index) {
                    setState(() {
                      _selectedIndex3 = index;
                    });
                    _showSnackBar('构建器 - 选择了: ${['1分钟', '5分钟', '15分钟', '30分钟'][index]}');
                  },
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // 禁用功能示例
            _buildSectionTitle('禁用功能示例'),
            const SizedBox(height: 16),
            Column(
              children: [
                // 禁用点击
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['选项1', '选项2', '选项3'],
                    selectedIndex: 1,
                    enableTap: false,
                  ),
                  onSelectionChanged: (index) {
                    _showSnackBar('禁用点击 - 选择了: 选项${index + 1}');
                  },
                ),
                
                const SizedBox(height: 16),
                
                // 禁用动画
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['快速', '正常', '慢速'],
                    selectedIndex: 0,
                    enableAnimation: false,
                  ),
                  selectedBackgroundColor: Colors.teal,
                  unselectedBackgroundColor: Colors.grey[300],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    _showSnackBar('禁用动画 - 选择了: ${['快速', '正常', '慢速'][index]}');
                  },
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // 网格布局示例
            _buildSectionTitle('网格布局示例'),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 3,
              children: [
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['买入', '卖出'],
                    selectedIndex: 0,
                  ),
                  height: 35,
                  selectedBackgroundColor: Colors.green,
                  unselectedBackgroundColor: Colors.grey[200],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    _showSnackBar('网格1 - 选择了: ${['买入', '卖出'][index]}');
                  },
                ),
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['做多', '做空'],
                    selectedIndex: 1,
                  ),
                  height: 35,
                  selectedBackgroundColor: Colors.blue,
                  unselectedBackgroundColor: Colors.grey[200],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    _showSnackBar('网格2 - 选择了: ${['做多', '做空'][index]}');
                  },
                ),
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['高', '中', '低'],
                    selectedIndex: 1,
                  ),
                  height: 35,
                  selectedBackgroundColor: Colors.orange,
                  unselectedBackgroundColor: Colors.grey[200],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    _showSnackBar('网格3 - 选择了: ${['高', '中', '低'][index]}');
                  },
                ),
                SegmentControlWidget(
                  data: SegmentControlData.custom(
                    segments: ['开', '关'],
                    selectedIndex: 0,
                  ),
                  height: 35,
                  selectedBackgroundColor: Colors.red,
                  unselectedBackgroundColor: Colors.grey[200],
                  selectedTextColor: Colors.white,
                  unselectedTextColor: Colors.grey[600],
                  onSelectionChanged: (index) {
                    _showSnackBar('网格4 - 选择了: ${['开', '关'][index]}');
                  },
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // 当前选择状态显示
            _buildSectionTitle('当前选择状态'),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('默认样式: ${['短线', '中线', '长线'][_selectedIndex1]}'),
                  const SizedBox(height: 8),
                  Text('两个选项: ${['买入', '卖出'][_selectedIndex2]}'),
                  const SizedBox(height: 8),
                  Text('自定义样式: ${['日线', '周线', '月线'][_selectedIndex3]}'),
                  const SizedBox(height: 8),
                  Text('深色主题: ${['技术分析', '基本面', '消息面'][_selectedIndex4]}'),
                  const SizedBox(height: 8),
                  Text('紧凑样式: ${['A股', '港股', '美股'][_selectedIndex5]}'),
                ],
              ),
            ),
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
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  /// 显示提示信息
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
