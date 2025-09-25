import 'package:flutter/material.dart';

/// 简单的解锁卡片测试组件
class SimpleUnlockCardTest extends StatelessWidget {
  const SimpleUnlockCardTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('简单解锁卡片测试'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '解锁卡片组件测试',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 32.0),
              _SimpleUnlockCard(),
            ],
          ),
        ),
      ),
    );
  }
}

/// 简单的解锁卡片组件
class _SimpleUnlockCard extends StatelessWidget {
  const _SimpleUnlockCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 顶部区域
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 左上角文本
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A0DAD),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: const Text(
                    '仅需10U',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // 右上角图片
                Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    'V',
                    style: TextStyle(
                      color: Color(0xFFF5F5DC),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16.0),
            
            // 中间文本
            const Text(
              '解锁全部功能',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            const Text(
              '即可解锁全部趋势指标',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            
            const SizedBox(height: 16.0),
            
            // 底部按钮
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('点击了立即解锁按钮'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A0DAD),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  elevation: 0,
                ),
                child: const Text(
                  '立即解锁',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
