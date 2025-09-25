/// API 常量定义
class ApiConstants {
  /// 基础 URL
  // static const String baseUrl = 'http://47.76.136.240:10000';
  static const String baseUrl = 'https://gw.trunk.toklink.io';


  /// API 版本
  static const String apiVersion = 'v1';
  
  /// 认证相关 API
  static const String authSendCode = '/api/member/auth/email/send-code';
  static const String authCodeLogin = '/api/member/auth/email/code-login';
  static const String authRefreshToken = '/api/member/auth/refresh';
  static const String authLogout = '/api/member/auth/logout';
  
  /// 用户相关 API
  static const String userProfile = '/api/member/user/profile';
  static const String userUpdate = '/api/member/user/update';
  
  /// IM 相关 API
  static const String imToken = '/api/im/token';
  static const String imUserInfo = '/api/im/user/info';



  /// 策略接口

  // 我的订阅列表
  static const String subscriptions = '/api/strategy/my-subscriptions';

  // 申请交易员
  static const String applyTrader = '/api/strategy/trader/apply';

  // 我的策略
  static const String myStrategies = '/api/strategy/strategies/my';

  // 发布策略
  static const String publishStrategy = '/api/strategy/strategies';

  // 策略详情
  static const String strategyDetail = '/api/strategy/strategies';

  // 交易员详情
  static const String traderDetail = '/api/strategy/trader';

  // 交易员状态检查
  static const String traderStatus = '/api/strategy/trader/status';

  // 我的关注列表
  static const String myFollows = '/api/strategy/my-follows';


  /// 默认超时时间（秒）
  static const int defaultTimeout = 30;
  
  /// 分页默认参数
  static const int defaultPageSize = 20;
  static const int defaultPageNum = 1;
}
