import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_logic.dart';


class ChatRedPacketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatRedPacketLogic());
  }
}