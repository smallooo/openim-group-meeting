import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:toklink/pages/chat/red_packet_detail/red_packet_detail_logic.dart';

class RedPacketDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RedPacketDetailLogic>(() => RedPacketDetailLogic());
  }
}