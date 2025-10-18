import 'package:get/get.dart';
import 'models/seller_models.dart';
import 'models/channel_models.dart';

class TkChannelHomeState {
  final sellerList = <MchSellerModel>[].obs;
  final selectedSellerIndex = 0.obs; // 当前选中的商家索引
  final channelList = <ChannelModel>[].obs; // 频道列表
  final isLoadingChannels = false.obs; // 是否正在加载频道数据
  final selectedCategoryId = ''.obs; // 当前选中的分类ID（仅针对综合频道下的列表项）
}
