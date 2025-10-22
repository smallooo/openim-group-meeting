import 'package:get/get.dart';

import 'select_group_members_logic.dart';

class SelectContactsFromGroupMemberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectContactsFromGroupMemberLogic());
  }
}
