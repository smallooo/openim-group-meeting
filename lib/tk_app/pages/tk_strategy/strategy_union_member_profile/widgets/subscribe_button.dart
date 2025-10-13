import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<StrategyUnionMemberProfileLogic>();
    return Obx(() {
      final isSubscribed = logic.isSubscribed.value;
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: isSubscribed ? null : logic.subscribe,
              style: ElevatedButton.styleFrom(
                backgroundColor: isSubscribed ? Colors.grey : Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
              ),
              child: Text(
                isSubscribed ? '已订阅' : '订阅',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
