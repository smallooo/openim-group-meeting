// 输入框高度调整示例代码

import 'package:flutter/material.dart';

class InputHeightExamples {
  
  // 方法1：调整Container的padding（当前使用的方法）
  Widget method1Padding() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20), // 调整vertical值
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '请输入止盈价',
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }

  // 方法2：使用固定高度的Container
  Widget method2FixedHeight() {
    return Container(
      height: 60, // 固定高度
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Center( // 使用Center让文字垂直居中
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '请输入止盈价',
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }

  // 方法3：使用SizedBox包装
  Widget method3SizedBox() {
    return SizedBox(
      height: 50, // 固定高度
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '请输入止盈价',
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }

  // 方法4：调整TextField的contentPadding
  Widget method4ContentPadding() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '请输入止盈价',
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18), // 直接调整TextField的padding
        ),
      ),
    );
  }

  // 方法5：使用ConstrainedBox
  Widget method5ConstrainedBox() {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 55, // 最小高度
        maxHeight: 70, // 最大高度
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '请输入止盈价',
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }

  // 完整的价格输入框示例（推荐使用）
  Widget completePriceInputExample() {
    return Row(
      children: [
        // 第一个输入框
        Expanded(
          child: Container(
            height: 50, // 固定高度
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '请输入止盈价',
                  hintStyle: const TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
        ),
        
        // 中间分割线
        SizedBox(
          width: 20,
          child: Center(
            child: Container(
              height: 1,
              width: 12,
              color: Colors.grey[300],
            ),
          ),
        ),
        
        // 第二个输入框
        Expanded(
          child: Container(
            height: 50, // 固定高度
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Center(
              child: TextField(
                enabled: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '选填',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// 使用示例：
/*
// 在您的_buildPriceSection方法中，可以这样使用：

Widget _buildPriceSection(int index, {bool showTypeSelector = true}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.grey[50],
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey[200]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ... 其他内容 ...
        
        // 价格输入框行 - 使用固定高度
        Row(
          children: [
            // 第一个输入框
            Expanded(
              child: Container(
                height: 50, // 设置固定高度
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Center(
                  child: TextField(
                    controller: controller.state.limitPriceControllers[index],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: _getPriceHintText(index),
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
            
            // 中间分割线
            SizedBox(
              width: 20,
              child: Center(
                child: Container(
                  height: 1,
                  width: 12,
                  color: Colors.grey[300],
                ),
              ),
            ),
            
            // 第二个输入框
            Expanded(
              child: Container(
                height: 50, // 设置固定高度
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Center(
                  child: TextField(
                    enabled: false,
                    controller: controller.state.optionalControllers[index],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '选填',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
*/
