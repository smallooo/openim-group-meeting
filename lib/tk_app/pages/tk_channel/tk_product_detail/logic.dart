import 'dart:convert';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:openim_common/openim_common.dart';

import '../../../../routes/app_navigator.dart';
import '../../../core/network/api_client.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/utils/openim_helper.dart';
import 'state.dart';
import 'models/product_models.dart';

class TkProductDetailLogic extends GetxController {
  final TkProductDetailState state = TkProductDetailState();

  @override
  void onInit() {
    super.onInit();
    
    // 从路由参数获取商品ID
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      final productId = arguments['productId'] ?? '10001';
      getProductDetail(productId);
    } else {
      // 默认使用固定ID
      getProductDetail('10001');
    }
  }

  /// 获取商品详情
  void getProductDetail(String productId) async {
    try {
      state.isLoading.value = true;
      
      final client = ApiClient(baseUrl: ApiConstants.baseUrl);
      final accessToken = await TokenAccessHelper.getAccessToken();

      print('开始获取商品详情，ID: $productId');

      final response = await client.post<Map<String, dynamic>>(
        ApiConstants.productDetail,
        data: {'id': productId},
        options: Options(headers: {'Access-Token': accessToken ?? ''}),
      );

      if (response != null) {
        print('收到商品详情响应');
        
        try {
          // 使用 freezed 模型解析响应
          final productResponse = ProductDetailResponse.fromJson(response);
          print('成功解析商品详情: ${productResponse.data?.name}');
          
          // 更新状态
          state.productDetail.value = productResponse.data;
          
          // 打印商品信息用于调试
          if (productResponse.data != null) {
            final product = productResponse.data!;
            print('商品名称: ${product.name}');
            print('商品价格: ${product.defaultPrice}');
            print('SKU数量: ${product.skus.length}');
          }
        } catch (e) {
          print('解析商品详情失败: $e');
        }
      } else {
        print('商品详情响应为空');
      }
    } catch (e) {
      print('获取商品详情失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 选择SKU
  void selectSku(int index) {
    if (index >= 0 && state.productDetail.value != null && 
        index < state.productDetail.value!.skus.length) {
      state.selectedSkuIndex.value = index;
      final selectedSku = state.productDetail.value!.skus[index];
      print('选中SKU: ${selectedSku.name}, 价格: ${selectedSku.price}');
    }
  }

  /// 获取当前选中的SKU
  ProductSkuModel? get selectedSku {
    if (state.productDetail.value != null && 
        state.selectedSkuIndex.value >= 0 && 
        state.selectedSkuIndex.value < state.productDetail.value!.skus.length) {
      return state.productDetail.value!.skus[state.selectedSkuIndex.value];
    }
    return null;
  }

  /// 点击客服
  void toCustomer() {
    String? userID = OpenIMHelper.getCurrentUserID();
    print('userID : $userID' );
    
    // 获取客服ID，这里可以从配置或参数中获取
    String? customerServiceID = _getCustomerServiceID();
    
    if (customerServiceID == null) {
      IMViews.showToast('客服暂时不在线，请稍后再试');
      return;
    }
    
    // 发送商品消息到客服
    _sendProductMessageToCustomer(customerServiceID);
  }
  
  /// 快速测试消息解析
  void quickTestMessageParsing() {
    print('🚀 快速测试消息解析...');
    
    // 首先检查常量值
    print('🔍 检查消息类型常量:');
    print('  - CustomMessageType.productShare: ${CustomMessageType.productShare}');
    print('  - CustomMessageType.productInquiry: ${CustomMessageType.productInquiry}');
    print('  - CustomMessageType.call: ${CustomMessageType.call}');
    print('  - CustomMessageType.emoji: ${CustomMessageType.emoji}');
    
    // 创建测试数据
    final testData = {
      "customType": CustomMessageType.productShare,
      "data": {
        "productId": "test123",
        "productName": "测试商品",
        "productImage": "https://example.com/image.jpg",
        "price": 99.99,
        "brandName": "测试品牌",
        "shopName": "测试店铺",
      }
    };
    
    print('📤 测试数据: $testData');
    
    // 测试解析
    try {
      final jsonString = json.encode(testData);
      final parsedMap = json.decode(jsonString);
      
      print('📥 解析结果: $parsedMap');
      print('🔍 customType: ${parsedMap['customType']}');
      print('🔍 data: ${parsedMap['data']}');
      print('🔍 类型匹配: ${parsedMap['customType'] == CustomMessageType.productShare}');
      
      if (parsedMap['customType'] == CustomMessageType.productShare) {
        print('✅ 消息类型匹配成功！');
        
        // 模拟parseCustomMessage的逻辑
        final customType = parsedMap['customType'];
        switch (customType) {
          case CustomMessageType.productShare:
            print('✅ 进入productShare分支');
            if (parsedMap['data'] != null) {
              parsedMap['data']['viewType'] = CustomMessageType.productShare;
              print('✅ 设置viewType成功: ${parsedMap['data']['viewType']}');
            } else {
              print('❌ data为null');
            }
            break;
          default:
            print('❌ 未匹配到productShare分支，customType: $customType');
        }
      } else {
        print('❌ 消息类型不匹配！');
      }
      
    } catch (e) {
      print('❌ 解析失败: $e');
    }
  }
  
  /// 测试发送简单消息
  void testSendSimpleMessage() async {
    print('🧪 测试发送简单消息...');
    
    try {
      final customerServiceID = _getCustomerServiceID();
      print('🔍 客服ID: $customerServiceID');
      
      // 创建简单的测试消息
      final testData = {
        "customType": CustomMessageType.productShare,
        "data": {
          "productId": "test123",
          "productName": "测试商品",
          "price": 99.99,
          "brandName": "测试品牌",
          "shopName": "测试店铺",
        }
      };
      
      print('📤 发送测试数据: ${json.encode(testData)}');
      
      // 创建自定义消息
      final message = await OpenIM.iMManager.messageManager.createCustomMessage(
        data: json.encode(testData),
        extension: 'product_share',
        description: '商品',
      );
      
      print('🔍 创建的消息对象: ${message.toJson()}');
      print('🔍 消息内容类型: ${message.contentType}');
      print('🔍 消息自定义数据: ${message.customElem?.data}');
      
      // 发送消息到客服
      await OpenIM.iMManager.messageManager.sendMessage(
        message: message,
        userID: customerServiceID,
        offlinePushInfo: OfflinePushInfo(
          title: '商品咨询',
          desc: '用户咨询商品：测试商品',
        ),
      );
      
      print('✅ 测试消息发送成功');
      
      IMViews.showToast('正在发送测试消息...');
      
      // 等待足够的时间确保消息已经同步到本地数据库
      await Future.delayed(const Duration(milliseconds: 1500));
      
      // 跳转到聊天页面
       _navigateToChat(customerServiceID!);
      
      IMViews.showToast('测试消息已发送');
      
    } catch (e) {
      print('❌ 测试消息发送失败: $e');
      IMViews.showToast('测试消息发送失败');
    }
  }
  
  /// 获取客服ID
  String? _getCustomerServiceID() {
    // 这里可以从配置、API或固定值获取客服ID
    // 暂时返回一个固定的客服ID，实际使用时应该从配置中获取
    return '8443303040'; // 替换为实际的客服ID

    // xw  8193405756
  }
  
  /// 发送商品消息到客服
  void _sendProductMessageToCustomer(String customerServiceID) async {
    try {
      final product = state.productDetail.value;
      if (product == null) {
        IMViews.showToast('商品信息获取失败');
        return;
      }
      
      // 使用简化的消息数据，与测试数据保持一致
      final productData = {
        "customType": CustomMessageType.productShare,
        "data": {
          "productId": product.id,
          "productName": product.name,
          "productImage": product.defaultPic,
          "price": product.defaultPrice,
          "brandName": product.brandName,
          "shopName": product.shopName,
        }
      };
      
      print('🔍 发送商品消息数据: ${json.encode(productData)}');
      print('🔍 消息类型: ${CustomMessageType.productShare}');
      
      // 创建自定义消息
      final message = await OpenIM.iMManager.messageManager.createCustomMessage(
        data: json.encode(productData),
        extension: 'product_share',
        description: '商品',
      );
      
      print('🔍 创建的消息对象: ${message.toJson()}');
      print('🔍 消息内容类型: ${message.contentType}');
      print('🔍 消息自定义数据: ${message.customElem?.data}');
      
      // 发送消息到客服
      await OpenIM.iMManager.messageManager.sendMessage(
        message: message,
        userID: customerServiceID,
        offlinePushInfo: OfflinePushInfo(
          title: '商品咨询',
          desc: '用户咨询商品：${product.name}',
        ),
      );
      
      print('✅ 消息发送成功');
      
      IMViews.showToast('正在发送商品信息...');
      
      // 等待足够的时间确保消息已经同步到本地数据库
      await Future.delayed(const Duration(milliseconds: 1500));
      
      // 跳转到聊天页面
       _navigateToChat(customerServiceID);
      
      IMViews.showToast('已发送商品信息给客服');
      
    } catch (e) {
      print('❌ 发送商品消息失败: $e');
      IMViews.showToast('发送失败，请重试');
    }
  }
  
  /// 跳转到聊天页面
  void _navigateToChat(String customerServiceID) async {
    try {
      // 先获取或创建会话
      ConversationInfo? conversationInfo;
      
      try {
        // 尝试获取已存在的会话
        conversationInfo = await OpenIM.iMManager.conversationManager.getOneConversation(
          sourceID: customerServiceID,
          sessionType: ConversationType.single,
        );
        print('✅ 找到已存在的会话: ${conversationInfo.conversationID}');
      } catch (e) {
        print('⚠️ 会话不存在，创建新会话: $e');
        // 会话不存在，创建新的会话信息
        conversationInfo = ConversationInfo(
          conversationID: 'single_$customerServiceID',
          conversationType: ConversationType.single,
          userID: customerServiceID,
          showName: '客服',
        );
      }
      
      print('🔍 跳转到聊天页面，会话ID: ${conversationInfo.conversationID}');
      
      // 跳转到聊天页面
      AppNavigator.startChat(conversationInfo: conversationInfo);
      
    } catch (e) {
      print('❌ 跳转到聊天页面失败: $e');
      // 如果出错，使用默认的会话信息
      final conversationInfo = ConversationInfo(
        conversationID: 'single_$customerServiceID',
        conversationType: ConversationType.single,
        userID: customerServiceID,
        showName: '客服',
      );
      AppNavigator.startChat(conversationInfo: conversationInfo);
    }
  }
  
  /// 测试发送商品消息功能
  void testSendProductMessage() {
    print('=== 测试商品消息发送功能 ===');
    
    final product = state.productDetail.value;
    if (product == null) {
      print('❌ 商品信息为空，无法测试');
      return;
    }
    
    print('✅ 商品信息:');
    print('  - 商品ID: ${product.id}');
    print('  - 商品名称: ${product.name}');
    print('  - 商品价格: ${product.defaultPrice}');
    print('  - 商品图片: ${product.defaultPic}');
    print('  - 品牌: ${product.brandName}');
    print('  - 店铺: ${product.shopName}');
    
    final selectedSku = this.selectedSku;
    if (selectedSku != null) {
      print('✅ 选中SKU:');
      print('  - SKU名称: ${selectedSku.name}');
      print('  - SKU价格: ${selectedSku.price}');
    }
    
    // 模拟发送消息
    final customerServiceID = _getCustomerServiceID();
    print('✅ 客服ID: $customerServiceID');
    
    // 构建消息数据
    final productData = {
      "customType": CustomMessageType.productShare,
      "data": {
        "productId": product.id,
        "productName": product.name,
        "productSubName": product.subName,
        "productImage": product.defaultPic,
        "price": selectedSku?.price ?? product.defaultPrice,
        "skuName": selectedSku?.name ?? '',
        "brandName": product.brandName,
        "categoryName": product.categoryName,
        "sellerName": product.sellerName,
        "shopName": product.shopName,
        "description": "用户咨询商品信息",
        "timestamp": DateTime.now().millisecondsSinceEpoch,
      }
    };
    
    print('✅ 消息数据构建完成:');
    print('  - 消息类型: ${productData["customType"]}');
    print('  - 商品数据: ${productData["data"]}');
    
    // 测试消息解析
    _testMessageParsing(productData);
    
    // 实际发送消息进行测试
    _sendProductMessageToCustomer(customerServiceID!);
    
    print('=== 测试完成 ===');
  }
  
  /// 测试消息解析
  void _testMessageParsing(Map<String, dynamic> productData) {
    print('🧪 测试消息解析...');
    
    try {
      // 模拟消息解析过程
      final jsonString = json.encode(productData);
      print('📤 JSON字符串: $jsonString');
      
      final parsedMap = json.decode(jsonString);
      print('📥 解析后的Map: $parsedMap');
      
      final customType = parsedMap['customType'];
      print('🔍 customType: $customType');
      print('🔍 CustomMessageType.productShare: ${CustomMessageType.productShare}');
      print('🔍 类型匹配: ${customType == CustomMessageType.productShare}');
      
      final data = parsedMap['data'];
      print('🔍 data: $data');
      print('🔍 data类型: ${data.runtimeType}');
      print('🔍 data是否为null: ${data == null}');
      
      if (data != null) {
        data['viewType'] = CustomMessageType.productShare;
        print('✅ 解析成功，viewType: ${data['viewType']}');
      } else {
        print('❌ data为null，解析失败');
      }
      
    } catch (e) {
      print('❌ 解析测试失败: $e');
    }
  }

}
