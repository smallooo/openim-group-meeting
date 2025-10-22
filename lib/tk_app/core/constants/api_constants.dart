/// API 常量定义
class ApiConstants {
  /// 基础 URL
  // static const String baseUrl = 'http://47.76.136.240:10000';
  // static const String baseUrl = 'https://gw.trunk.toklink.io';
  static const String baseUrl = 'https://gateway.trunk.toklink.io';

  /// API 版本
  static const String apiVersion = 'v1';
  
  /// 认证相关 API
  static const String authSendCode = '/member/app/auth/email/send-code';
  static const String authCodeLogin = '/member/app/auth/email/code-login';
  static const String authRefreshToken = '/member/app/auth/refresh';
  static const String authLogout = '/member/app/auth/logout';
  
  /// 用户相关 API
  static const String userProfile = '/member/app/user/profile';
  static const String userUpdate = '/member/app/user/update';
  
  /// IM 相关 API
  static const String imToken = '/api/im/token';
  static const String imUserInfo = '/api/im/user/info';



  /// 策略接口

  // 我的订阅列表
  static const String subscriptions = '/strategy/app/my-subscriptions';

  // 申请交易员
  static const String applyTrader = '/strategy/app/trader/apply';

  // 我的策略
  static const String myStrategies = '/strategy/app/strategies/my';

  // 发布策略
  static const String publishStrategy = '/strategy/app/strategies';

  // 策略详情
  static const String strategyDetail = '/strategy/app/strategies';

  // 交易员详情
  static const String traderDetail = '/strategy/app/trader';

  // 交易员状态检查
  static const String traderStatus = '/strategy/app/trader/status';

  // 我的关注列表
  static const String myFollows = '/strategy/app/my-follows';


  // 交易员列表
  static const String traderList = '/strategy/app/trader/list';

  // 策略评价列表
  static const String strategyRatings = '/strategy/app/strategies';

  // 提交策略评价
  static const String submitStrategyRating = '/strategy/app/strategies';

  // 交易员的策略列表
  static const String traderStrategies = '/strategy/app/strategies/trader';

  // 获取订阅状态
  static const String subscriptionStatus = '/strategy/app/api/subscribe/{traderId}/status';

  // 获取交易员价格
  static const String traderPricing = '/strategy/app/trader/pricing/trader/{traderId}';


// 订阅交易员
  static const String subscribe = '/strategy/app/api/subscribe/{traderId}';



  /// 钱包相关 API
  // 获取钱包密码状态
  static const String walletPasswordStatus = '/balance/app/wallet-password/status';
  
  // 设置钱包密码
  static const String setWalletPassword = '/balance/app/wallet-password/set';
  
  // 修改钱包密码
  static const String changeWalletPassword = '/balance/app/wallet-password/change';
  
  // 支付验证
  static const String paymentVerify = '/balance/app/wallet-payment/verify';
  
  // 钱包资金查询
  static const String walletFundCurrency = '/balance/app/wallet-fund/currency';

  // 商家列表
  static const String sellerList = '/product/app/product/seller/list';

  // 频道分类树
  static const String channelCategoryTree = '/product/app/product/channel-category/tree';

  // 商品详情
  static const String productDetail = '/product/app/product/detail';

  // 商品列表
  static const String productList = '/product/app/product/list';

  /// 订单相关 API
  // 订单列表
  static const String orderList = '/order/app/purchase/list';
  
  // 订单详情
  static const String orderDetail = '/order/app/purchase';

  // 申请退款
  static const String refundApply = '/order/app/refund/apply';

  // 默认分页大小
  static const int defaultPageSize = 10;
  static const int defaultPageNum = 1;
}
