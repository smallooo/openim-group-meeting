import 'package:toklink_product_sdk/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/// 简易 HTTP 日志客户端：打印请求/响应的详细信息
class LoggingClient extends http.BaseClient {
  final http.Client _inner;
  final bool logRequestBody;
  final bool logResponseBody;

  LoggingClient(
    this._inner, {
    this.logRequestBody = true,
    this.logResponseBody = true,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // 打印请求
    print('================ HTTP REQUEST ================');
    print('Method: ${request.method}');
    print('URL   : ${request.url}');
    print('Headers: ${request.headers}');
    if (logRequestBody) {
      try {
        if (request is http.Request) {
          final body = request.body;
          print('Body  : ${body.isEmpty ? '<empty>' : body}');
        } else if (request is http.MultipartRequest) {
          print('Multipart fields: ${request.fields}');
          print('Multipart files : ${request.files.map((f) => f.filename).toList()}');
        } else {
          print('Body  : <streamed or unknown type>');
        }
      } catch (e) {
        print('Body  : <failed to read body: $e>');
      }
    }

    // 发送请求并读取响应
    final streamed = await _inner.send(request);
    List<int> bytes = <int>[];
    try {
      bytes = await http.ByteStream(streamed.stream).toBytes();
    } catch (e) {
      print('WARN: failed to read response stream: $e');
    }

    // 打印响应
    print('================ HTTP RESPONSE ===============');
    print('Status: ${streamed.statusCode}');
    print('Headers: ${streamed.headers}');
    if (logResponseBody) {
      try {
        final bodyStr = bytes.isEmpty ? '' : utf8.decode(bytes);
        print('Body  : ${bodyStr.isEmpty ? '<empty>' : bodyStr}');
      } catch (_) {
        print('Body  : <${bytes.length} bytes>');
      }
    }
    print('==============================================');

    return http.StreamedResponse(
      Stream<List<int>>.fromIterable(bytes.isEmpty ? [] : [bytes]),
      streamed.statusCode,
      contentLength: streamed.contentLength,
      request: streamed.request,
      headers: streamed.headers,
      isRedirect: streamed.isRedirect,
      persistentConnection: streamed.persistentConnection,
      reasonPhrase: streamed.reasonPhrase,
    );
  }
}

// ================= 使用示例 =================
Future<void> main() async {
  // 1) 初始化客户端（将 basePath 替换为你的真实网关地址）
  final client = ApiClient(basePath: 'https://gw.trunk.toklink.io/product');
  // 挂载日志客户端，打印所有请求/响应的详细信息
  client.client = LoggingClient(http.Client());
  // 设置认证与内容类型（按需替换你的 token）
  client.addDefaultHeader('Access-Token', '99eb9ca5-0c4d-4280-ae22-7340ccbba8d8');
  client.addDefaultHeader('Content-Type', 'application/json');
  client.addDefaultHeader('Accept', 'application/json');

  // 2) 创建 API 实例
  final productApi = ProductAppApi(client);

  // 3) 按需调用示例方法
  // await getBrandList(productApi);
  await getChannelCategoryTree(productApi);
  // await getChannelCategoryTree(productApi);
  // await getChannelList(productApi);
  // await getProductDetail(productApi, id: 1001);
  // await getSearchSuggestions(productApi, keyword: 'iPhone');
  // await listProducts(productApi, categoryId: 10);
  // await searchProducts(productApi, keyword: '手机');
}

// =============== 具体方法封装 ===============
Future<void> getBrandList(ProductAppApi api) async {
  try {
    final resp = await api.brandList();
    print('✅ 获取品牌列表成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取品牌列表失败: $e');
  }
}

// 频道分类树（新版 SDK：channelCategoryTree）
Future<void> getCategoryTree(ProductAppApi api) async {
  try {
    final resp = await api.channelCategoryTree();
    print('✅ 获取分类树成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取分类树失败: $e');
  }
}

Future<void> getChannelCategoryTree(ProductAppApi api) async {
  try {
    final resp = await api.channelCategoryTree();
    print('✅ 获取频道分类树成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取频道分类树失败: $e');
  }
}

Future<void> getChannelList(ProductAppApi api) async {
  // 新版 SDK 使用 ChannelListQueryDTO（不含分页）
  final query = ChannelListQueryDTO(status: 1);
  try {
    final resp = await api.channelList(query);
    print('✅ 获取频道列表成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取频道列表失败: $e');
  }
}

Future<void> getProductDetail(ProductAppApi api, {required int id}) async {
  final req = IdRequest(id: id);
  try {
    final resp = await api.detail(req);
    print('✅ 获取商品详情成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取商品详情失败: $e');
  }
}

// 注意：旧版示例 getChannelCategories 已移除，
// 新版请使用 channelCategoryTree 或在 channelList 返回中读取 categoryData。

Future<void> getSearchSuggestions(ProductAppApi api, {String? keyword}) async {
  final query = SuggestionsQueryDTO(keyword: keyword, limit: 10);
  try {
    final resp = await api.getSearchSuggestions(suggestionsQueryDTO: query);
    print('✅ 获取搜索建议成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取搜索建议失败: $e');
  }
}

Future<void> listProducts(ProductAppApi api, {int? categoryId}) async {
  final query = ProductQueryDTO(categoryId: categoryId, page: 1, size: 20);
  try {
    final resp = await api.list(query);
    print('✅ 获取商品列表成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取商品列表失败: $e');
  }
}

Future<void> searchProducts(ProductAppApi api, {required String keyword}) async {
  final query = ProductQueryDTO(keyword: keyword, page: 1, size: 20);
  try {
    final resp = await api.search(query);
    print('✅ 搜索商品成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 搜索商品失败: $e');
  }
}