import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).padding.top + 56, // 状态栏高度 + AppBar高度
      child: Stack(
        children: [
          // 返回按钮
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            left: 8,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  print('返回按钮被点击');
                  Get.back();
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[800]!.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios, 
                    color: Colors.white, 
                    size: 18
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
