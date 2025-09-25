import 'package:flutter/material.dart';

/// 简单的日期选择器
/// 底部弹出，滑动选择日期
class SimpleDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String title;
  final Function(DateTime) onDateSelected;

  const SimpleDatePicker({
    super.key,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    required this.title,
    required this.onDateSelected,
  });

  @override
  State<SimpleDatePicker> createState() => _SimpleDatePickerState();
}

class _SimpleDatePickerState extends State<SimpleDatePicker> {
  late FixedExtentScrollController _scrollController;
  late List<DateTime> _dates;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _initializeDates();
  }

  void _initializeDates() {
    final firstDate = widget.firstDate ?? DateTime.now();
    final lastDate = widget.lastDate ?? DateTime.now().add(const Duration(days: 365));
    final initialDate = widget.initialDate ?? DateTime.now();

    // 生成日期列表
    _dates = [];
    DateTime currentDate = firstDate;
    while (currentDate.isBefore(lastDate) || currentDate.isAtSameMomentAs(lastDate)) {
      _dates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 1));
    }

    // 找到初始日期的索引
    _selectedIndex = _dates.indexWhere((date) => 
        date.year == initialDate.year && 
        date.month == initialDate.month && 
        date.day == initialDate.day);
    
    if (_selectedIndex == -1) {
      _selectedIndex = 0;
    }

    _scrollController = FixedExtentScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  String _formatDate(DateTime date) {
    return '${date.year}年${date.month}月${date.day}日';
  }

  String _getWeekday(DateTime date) {
    const weekdays = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
    return weekdays[date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          // 标题栏
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    '取消',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final selectedDate = _dates[_selectedIndex];
                    widget.onDateSelected(selectedDate);
                    Navigator.of(context).pop(selectedDate);
                  },
                  child: const Text(
                    '确定',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9E13F7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // 日期选择器
          Expanded(
            child: ListWheelScrollView.useDelegate(
              controller: _scrollController,
              itemExtent: 50,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  if (index >= _dates.length) return null;
                  
                  final date = _dates[index];
                  final isSelected = index == _selectedIndex;
                  
                  return Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _formatDate(date),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                            color: isSelected ? const Color(0xFF9E13F7) : Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _getWeekday(date),
                          style: TextStyle(
                            fontSize: 14,
                            color: isSelected ? const Color(0xFF9E13F7) : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: _dates.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 显示日期选择器的静态方法
Future<DateTime?> showSimpleDatePicker({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
  required String title,
}) {
  return showModalBottomSheet<DateTime>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => SimpleDatePicker(
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      title: title,
      onDateSelected: (date) {
        // 这里不直接关闭，让确定按钮来处理
      },
    ),
  );
}
