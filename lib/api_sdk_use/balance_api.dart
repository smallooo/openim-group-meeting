import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:taowu_balance_sdk/api.dart';

/// 钱包余额 API 服务
/// 
/// 封装了 balance-sdk 的所有功能，提供统一的调用接口
/// 包括：余额查询、支付密码管理、支付/退款处理、红包功能等
class BalanceApiService {
  // 单例模式
  static final BalanceApiService _instance = BalanceApiService._internal();
  factory BalanceApiService() => _instance;
  BalanceApiService._internal();

  late CAPIApi _api;
  late ApiClient _apiClient;
  
  /// 初始化配置
  /// 
  /// [baseUrl] API 基础地址
  /// [accessToken] 访问令牌，如果未提供，需要在调用前设置
  void initialize({
    String baseUrl = 'http://localhost:9998/v1',
    String? accessToken,
  }) {
    _apiClient = ApiClient(basePath: baseUrl);
    
    // 如果提供了 accessToken，直接设置
    if (accessToken != null) {
      setAccessToken(accessToken);
    }
    
    _api = CAPIApi(_apiClient);
  }

  /// 设置访问令牌
  void setAccessToken(String token) {
    _apiClient.addDefaultHeader('Access-Token', token);
  }

  /// 设置认证头（用于签名认证）
  /// 
  /// [timestamp] 时间戳
  /// [nonce] 随机数
  /// [signature] 签名
  void setAuthHeaders({
    required String timestamp,
    required String nonce,
    required String signature,
  }) {
    _apiClient.addDefaultHeader('X-Timestamp', timestamp);
    _apiClient.addDefaultHeader('X-Nonce', nonce);
    _apiClient.addDefaultHeader('X-Signature', signature);
  }

  /// 生成签名（示例方法，具体实现根据后台要求调整）
  /// 
  /// [timestamp] 时间戳
  /// [nonce] 随机数
  /// [secretKey] 密钥
  String generateSignature({
    required String timestamp,
    required String nonce,
    required String secretKey,
    String? body,
  }) {
    // 按照后台要求的规则生成签名
    // 这里是一个示例实现，需要根据实际情况调整
    final data = '$timestamp$nonce${body ?? ''}$secretKey';
    final bytes = utf8.encode(data);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  // ==================== 余额查询相关 ====================

  /// 查询指定币种余额
  /// 
  /// [currencyId] 币种ID
  /// 返回: 余额信息
  Future<Balance?> getBalance(int currencyId) async {
    try {
      final result = await _api.getMyBalance(currencyId);
      return result?.data;
    } catch (e) {
      _handleError('查询余额失败', e);
      return null;
    }
  }

  /// 查询余额列表
  /// 
  /// [queryDTO] 查询条件（可选）
  /// 返回: 余额列表
  Future<List<Balance>?> getBalanceList({BalanceQueryDTO? queryDTO}) async {
    try {
      final result = await _api.getMyBalanceList(queryDTO!);
      return result?.data;
    } catch (e) {
      _handleError('查询余额列表失败', e);
      return null;
    }
  }

  /// 获取余额总览
  /// 
  /// 返回: 所有币种余额列表
  Future<List<Balance>?> getBalanceSummary() async {
    try {
      final result = await _api.getMyBalanceSummary();
      return result?.data;
    } catch (e) {
      _handleError('获取余额总览失败', e);
      return null;
    }
  }

  // ==================== 支付密码管理 ====================

  /// 查询支付密码状态
  /// 
  /// 返回: 支付密码状态（是否已设置等）
  Future<PaymentPasswordStatusVO?> getPaymentPasswordStatus() async {
    try {
      final result = await _api.getMyPaymentPasswordStatus();
      return result?.data;
    } catch (e) {
      _handleError('查询支付密码状态失败', e);
      return null;
    }
  }

  /// 设置支付密码
  /// 
  /// [password] 支付密码
  /// 返回: 是否设置成功
  Future<bool> setPaymentPassword(String password) async {
    try {
      final result = await _api.setMyPaymentPassword(password);
      return result?.errCode == 200 || result?.errCode == 0;
    } catch (e) {
      _handleError('设置支付密码失败', e);
      return false;
    }
  }

  /// 修改支付密码
  /// 
  /// [oldPassword] 原支付密码
  /// [newPassword] 新支付密码
  /// 返回: 是否修改成功
  Future<bool> changePaymentPassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      final result = await _api.changeMyPaymentPassword(oldPassword, newPassword);
      return result?.errCode == 200 || result?.errCode == 0;
    } catch (e) {
      _handleError('修改支付密码失败', e);
      return false;
    }
  }

  /// 验证支付密码
  /// 
  /// [password] 支付密码
  /// 返回: 是否验证成功
  Future<bool> verifyPaymentPassword(String password) async {
    try {
      final result = await _api.verifyMyPaymentPassword(password);
      return result?.errCode == 200 || result?.errCode == 0;
    } catch (e) {
      _handleError('验证支付密码失败', e);
      return false;
    }
  }

  // ==================== 支付相关 ====================

  /// 处理支付订单
  /// 
  /// [paymentProcessDTO] 支付处理参数
  /// 返回: 支付处理结果
  Future<PaymentProcessResultVO?> processPayment(
    PaymentProcessDTO paymentProcessDTO,
  ) async {
    try {
      final result = await _api.processMyPayment(paymentProcessDTO);
      return result?.data;
    } catch (e) {
      _handleError('处理支付订单失败', e);
      return null;
    }
  }

  /// 验证支付密码并支付
  /// 
  /// [paymentPasswordVerifyDTO] 支付验证参数（包含密码和订单信息）
  /// 返回: 支付处理结果
  Future<PaymentProcessResultVO?> verifyPasswordAndPay(
    PaymentPasswordVerifyDTO paymentPasswordVerifyDTO,
  ) async {
    try {
      final result = await _api.verifyPasswordAndPay(paymentPasswordVerifyDTO);
      return result?.data;
    } catch (e) {
      _handleError('验证密码并支付失败', e);
      return null;
    }
  }

  // ==================== 退款相关 ====================

  /// 处理退款订单
  /// 
  /// [refundProcessDTO] 退款处理参数
  /// 返回: 退款处理结果
  Future<RefundProcessResultVO?> processRefund(
    RefundProcessDTO refundProcessDTO,
  ) async {
    try {
      final result = await _api.processMyRefund(refundProcessDTO);
      return result?.data;
    } catch (e) {
      _handleError('处理退款订单失败', e);
      return null;
    }
  }

  /// 验证支付密码并退款
  /// 
  /// [refundPasswordVerifyDTO] 退款验证参数（包含密码和订单信息）
  /// 返回: 退款处理结果
  Future<RefundProcessResultVO?> verifyPasswordAndRefund(
    RefundPasswordVerifyDTO refundPasswordVerifyDTO,
  ) async {
    try {
      final result = await _api.verifyPasswordAndRefund(refundPasswordVerifyDTO);
      return result?.data;
    } catch (e) {
      _handleError('验证密码并退款失败', e);
      return null;
    }
  }

  // ==================== 红包相关 ====================

  /// 创建红包
  /// 
  /// [createRedPacketDTO] 红包创建参数
  /// 返回: 红包编号
  Future<String?> createRedPacket(CreateRedPacketDTO createRedPacketDTO) async {
    try {
      final result = await _api.createRedPacket(createRedPacketDTO);
      return result?.data;
    } catch (e) {
      _handleError('创建红包失败', e);
      return null;
    }
  }

  /// 领取红包
  /// 
  /// [receiveRedPacketDTO] 红包领取参数
  /// 返回: 红包领取结果
  Future<ReceiveRedPacketResultVO?> receiveRedPacket(
    ReceiveRedPacketDTO receiveRedPacketDTO,
  ) async {
    try {
      final result = await _api.receiveRedPacket(receiveRedPacketDTO);
      return result?.data;
    } catch (e) {
      _handleError('领取红包失败', e);
      return null;
    }
  }

  /// 查询红包详情
  /// 
  /// [packetNo] 红包编号
  /// 返回: 红包详情
  Future<RedPacketVO?> getRedPacketDetail(String packetNo) async {
    try {
      final result = await _api.getRedPacketDetail(packetNo);
      return result?.data;
    } catch (e) {
      _handleError('查询红包详情失败', e);
      return null;
    }
  }

  // ==================== 错误处理 ====================

  /// 统一错误处理
  void _handleError(String message, dynamic error) {
    print('❌ $message: $error');
    // 可以在这里添加更多错误处理逻辑
    // 例如：上报错误、显示提示等
    if (error is ApiException) {
      print('API错误码: ${error.code}');
      print('错误信息: ${error.message}');
    }
  }
}

// 全局实例，方便直接使用
final balanceApi = BalanceApiService();
