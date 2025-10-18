import 'package:get/get.dart';
import 'models/product_models.dart';

class TkProductDetailState {
  final isLoading = false.obs; // 是否正在加载
  final productDetail = Rxn<ProductDetailModel>(); // 商品详情
  final selectedSkuIndex = 0.obs; // 选中的SKU索引
  
  TkProductDetailState() {
    ///Initialize variables
  }
}
