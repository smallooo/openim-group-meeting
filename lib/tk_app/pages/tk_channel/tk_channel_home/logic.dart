import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../core/network/api_client.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../../core/constants/api_constants.dart';
import 'state.dart';
import 'models/seller_models.dart';
import 'models/channel_models.dart';
import 'package:dio/dio.dart';

class TkChannelHomeLogic extends GetxController {
  final TkChannelHomeState state = TkChannelHomeState();

  @override
  void onReady() {
    super.onReady();
    getSellerList();
  }

  /// 获取商家列表
  void getSellerList() async {
    try {
      final client = ApiClient(baseUrl: ApiConstants.baseUrl);
      final accessToken = await TokenAccessHelper.getAccessToken();

      // 直接获取原始响应数据
      final response = await client.post<Map<String, dynamic>>(
        ApiConstants.sellerList,
        options: Options(headers: {'Access-Token': accessToken ?? ''}),
      );

      if (response != null) {
        print('收到响应数据');
        
        try {
          // 使用 freezed 模型解析整个响应
          final sellerResponse = SellerListResponse.fromJson(response);
          print('成功解析商家列表，数量: ${sellerResponse.data.length}');
          
          // 更新状态
          state.sellerList.assignAll(sellerResponse.data);
          
          // 打印每个商家信息用于调试
          for (int i = 0; i < sellerResponse.data.length; i++) {
            final seller = sellerResponse.data[i];
            print('商家 ${i + 1}: ${seller.name}, 店铺数量: ${seller.shops.length}');
          }
          
          // 如果有商家数据，自动加载第一个商家的频道数据
          if (sellerResponse.data.isNotEmpty) {
            getChannelCategoryTree(sellerResponse.data.first.id);
          }
        } catch (e) {
          print('解析响应数据失败: $e');
        }
      } else {
        print('响应为空');
      }
    } catch (e) {
      print('获取商家列表失败: $e');
    }
  }

  /// 选择商家
  void selectSeller(int index) {
    if (index >= 0 && index < state.sellerList.length) {
      state.selectedSellerIndex.value = index;
      final selectedSeller = state.sellerList[index];
      print('选中商家: ${selectedSeller.name}');
      
      // 加载选中商家的频道数据
      getChannelCategoryTree(selectedSeller.id);
    }
  }

  /// 获取当前选中的商家
  MchSellerModel? get selectedSeller {
    if (state.sellerList.isNotEmpty && 
        state.selectedSellerIndex.value >= 0 && 
        state.selectedSellerIndex.value < state.sellerList.length) {
      return state.sellerList[state.selectedSellerIndex.value];
    }
    return null;
  }

  /// 获取频道分类树
  void getChannelCategoryTree(String sellerId) async {
    if (sellerId.isEmpty) {
      print('sellerId 为空，无法获取频道数据');
      return;
    }

    try {
      state.isLoadingChannels.value = true;
      
      final client = ApiClient(baseUrl: ApiConstants.baseUrl);
      final accessToken = await TokenAccessHelper.getAccessToken();

      print('开始获取商家 $sellerId 的频道数据');

      final response = await client.post<Map<String, dynamic>>(
        ApiConstants.channelCategoryTree,
        data: {'sellerId': sellerId},
        options: Options(headers: {'Access-Token': accessToken ?? ''}),
      );

      if (response != null) {
        print('收到频道数据响应');
        
        try {
          // 使用 freezed 模型解析响应
          final channelResponse = ChannelCategoryTreeResponse.fromJson(response);
          print('成功解析频道数据，频道数量: ${channelResponse.data.length}');
          
          // 更新状态
          state.channelList.assignAll(channelResponse.data);
          
          // 自动选中"综合"频道下的第一个分类
          final comprehensiveChannel = channelResponse.data.firstWhere(
            (channel) => channel.channelName.contains('综合'),
            orElse: () => const ChannelModel(),
          );
          if (comprehensiveChannel.categories.isNotEmpty) {
            state.selectedCategoryId.value = comprehensiveChannel.categories.first.id;
          } else {
            state.selectedCategoryId.value = '';
          }
          
          // 打印频道信息用于调试
          for (int i = 0; i < channelResponse.data.length; i++) {
            final channel = channelResponse.data[i];
            print('频道 ${i + 1}: ${channel.channelName}, 分类数量: ${channel.categories.length}');
            for (int j = 0; j < channel.categories.length; j++) {
              final category = channel.categories[j];
              print('  - 分类 ${j + 1}: ${category.name}');
            }
          }
        } catch (e) {
          print('解析频道数据失败: $e');
        }
      } else {
        print('频道数据响应为空');
      }
    } catch (e) {
      print('获取频道数据失败: $e');
    } finally {
      state.isLoadingChannels.value = false;
    }
  }

  /// 选择分类（仅针对综合频道下的列表项）
  void selectCategory(String categoryId, String categoryName) {
    print('点击分类: $categoryName (ID: $categoryId)');
    print('当前选中ID: ${state.selectedCategoryId.value}');
    state.selectedCategoryId.value = categoryId;
    print('更新后选中ID: ${state.selectedCategoryId.value}');
  }

  /// 跳转到频道内容页面
  void navigateToChannelContent(String categoryId, String categoryName, String channelName) {
    print('跳转到频道内容页面: $channelName - $categoryName');
    Get.toNamed(AppRoutes.tkChannelContent, arguments: {
      'categoryId': categoryId,
      'categoryName': categoryName,
      'channelName': channelName,
    });
  }

  /// 获取当前选中的分类
  CategoryModel? get selectedCategory {
    if (state.selectedCategoryId.value.isEmpty) return null;
    
    for (final channel in state.channelList) {
      for (final category in channel.categories) {
        if (category.id == state.selectedCategoryId.value) {
          return category;
        }
      }
    }
    return null;
  }
}
