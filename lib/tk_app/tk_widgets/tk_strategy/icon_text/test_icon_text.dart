import 'package:flutter/material.dart';

import 'icon_text_widget.dart';

/// 测试图标文字组件
class TestIconTextWidget extends StatelessWidget {
  const TestIconTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconTextWidget 测试',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IconTextWidget 测试'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 基础用法
              IconTextWidget(
                leftIcon: Icon(Icons.notifications, color: Color(0xFF9C27B0)),
                text: 'CG00587621于14:54订阅了會長David',
              ),
              
              SizedBox(height: 20),
              
              // 预设样式
              PresetIconTextWidget(
                iconType: IconTextIconType.notification,
                text: '预设通知样式',
              ),
              
              SizedBox(height: 20),
              
              // 自定义样式
              IconTextWidget(
                leftIcon: Icon(Icons.star, color: Color(0xFFFFD700)),
                text: '自定义样式测试',
                backgroundColor: Color(0xFFFFF8E1),
                borderRadius: 8.0,
                padding: EdgeInsets.all(16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
