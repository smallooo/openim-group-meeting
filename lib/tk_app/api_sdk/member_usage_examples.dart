import 'package:toklink_member_sdk/api.dart';
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

    // 发送请求并读取响应（复制响应流以便后续调用仍可读取）
    final streamed = await _inner.send(request);
    List<int> bytes = <int>[];
    try {
      bytes = await http.ByteStream(streamed.stream).toBytes();
    } catch (e) {
      // 忽略读取异常，以免影响后续流程
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
        // 若非 UTF-8，直接打印字节长度
        print('Body  : <${bytes.length} bytes>');
      }
    }
    print('==============================================');

    // 还原响应流供上层继续消费
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

// 演示：EmailAuthAppApi、MemberAppApi、TokenAppApi 的常用调用
Future<void> main() async {
  // 1) 初始化客户端（将 basePath 替换为你的真实网关地址）
  final client = ApiClient(basePath: 'https://gw.trunk.toklink.io/api/member');
  // 挂载日志客户端，打印所有请求/响应的详细信息
  client.client = LoggingClient(http.Client());
  // 采用 Access-Token 认证（或使用 Authorization: Bearer <token>）
  client.addDefaultHeader('Access-Token', '4886e960-7e5b-4ed7-a6af-19462acada71');
  // client.addDefaultHeader('Authorization', 'Bearer your_jwt_token');
  client.addDefaultHeader('Content-Type', 'application/json');
  client.addDefaultHeader('Accept', 'application/json');

  // 2) 创建 API 实例
  final emailApi = EmailAuthAppApi(client);
  final memberApi = MemberAppApi(client);
  final tokenApi = TokenAppApi(client);

  // 3) 发送邮箱验证码
  // await sendEmailCode(emailApi, email: '2386869710@qq.com');

  // 4) 验证码登录（拿到后端返回的 token 后，设置到客户端默认头）
  // final loginOk = await loginWithCode(emailApi,
  //     email: '2386869710@qq.com', code: '189930');
  // if (loginOk.accessToken != null && loginOk.accessToken!.isNotEmpty) {
  //   client.addDefaultHeader('Access-Token', loginOk.accessToken!);
  // }

  // // 5) 获取当前用户信息（需要已设置认证头）
  // await getCurrentUser(memberApi);
  //
  // // 6) 刷新 Token
  // await refreshToken(tokenApi, refreshToken: loginOk.refreshToken ?? '');
  await refreshToken(tokenApi, refreshToken: 'c9d99735-d893-4f96-b386-bb26aebf3c90');

  //
  // // 7) 退出登录
  // await logout(tokenApi);
}

// =============== 具体方法封装 ===============
Future<void> sendEmailCode(EmailAuthAppApi api, {required String email}) async {
  final cmd = SendEmailCodeCommand(
    email: email,
    purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
    // deviceId: 'device-123',
    // userAgent: 'Flutter App',
    // ipAddress: '127.0.0.1',
    deviceId: '',
    userAgent: '',
    ipAddress: '',
  );
  try {
    // 打印模型对象（便于确认序列化内容）
    print('即将发送发送验证码请求，模型: ${cmd.toJson()}');
    final resp = await api.sendEmailCode(cmd);
    print('✅ 发送验证码成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 发送验证码失败: $e');
  }
}

class LoginResult {
  final String? accessToken;
  final String? refreshToken;
  LoginResult({this.accessToken, this.refreshToken});
}

Future<LoginResult> loginWithCode(EmailAuthAppApi api,
    {required String email, required String code}) async {
  final cmd = EmailCodeLoginCommand(
    email: email,
    code: code,
    deviceId: 'device-123',
    userAgent: 'Flutter App',
    ipAddress: '127.0.0.1',
  );
  try {
    final resp = await api.emailCodeLogin(cmd);
    print('✅ 验证码登录成功: ${resp?.toJson()}');

    // 注意：根据后端返回结构从 resp?.data 中取出实际的 access/refresh token
    // 这里用占位读取示例，实际字段名请以 SDK 模型为准
    // final token = resp?.data?.accessToken; // 若模型里有该字段
    // final refresh = resp?.data?.refreshToken;
    return LoginResult(
      accessToken: null, // 请按你的返回模型赋值
      refreshToken: null,
    );
  } catch (e) {
    print('❌ 验证码登录失败: $e');
    return LoginResult();
  }
}

Future<void> getCurrentUser(MemberAppApi api) async {
  try {
    // 按生成的接口约定，传一个空对象即可
    final resp = await api.getCurrentUser({});
    print('✅ 获取当前用户成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 获取当前用户失败: $e');
  }
}

Future<void> refreshToken(TokenAppApi api, {required String refreshToken}) async {
  final cmd = TokenRefreshCommand(refreshToken: refreshToken);
  try {
    final resp = await api.refreshToken(cmd);
    print('✅ 刷新 Token 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 刷新 Token 失败: $e');
  }
}

Future<void> logout(TokenAppApi api) async {
  final cmd = TokenLogoutCommand();
  try {
    final resp = await api.logout(cmd);
    print('✅ 退出登录成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 退出登录失败: $e');
  }
}