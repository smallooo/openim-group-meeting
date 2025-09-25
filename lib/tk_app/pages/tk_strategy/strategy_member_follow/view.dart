import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/user_list.dart';

class StrategyMemberFollowPage extends StatelessWidget {
  StrategyMemberFollowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StrategyMemberFollowLogic>(
      init: StrategyMemberFollowLogic(),
      builder: (logic) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              // 顶部导航栏和筛选器
              const CustomAppBar(),
              
              // 用户列表
              const Expanded(
                child: UserList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
