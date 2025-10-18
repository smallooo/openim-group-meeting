import 'package:get/get.dart';
import '../../../features/product/data/models/product_models.dart';

class TkChannelContentState {
  final channelName = ''.obs; // 频道名称
  final categoryId = ''.obs; // 分类ID
  final categoryName = ''.obs; // 分类名称
  
  // 商品列表相关状态
  final productList = <ProductModel>[].obs; // 商品列表
  final isLoadingProducts = false.obs; // 是否正在加载商品
  final hasError = false.obs; // 是否有错误
  
  TkChannelContentState() {
    ///Initialize variables
  }
}
