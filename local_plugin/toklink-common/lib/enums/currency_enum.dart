/// 币种枚举
/// @author: benng
/// @date: 2025/9/21
enum CurrencyEnum {
  btc(1, "BTC", "比特币", "BTC"),
  eth(2, "ETH", "以太坊", "ETH"),
  usdt(3, "USDT", "泰达币", "USDT"),
  usdc(4, "USDC", "美元稳定币", "USDC"),
  bnb(5, "BNB", "币安币", "BNB"),
  ada(6, "ADA", "艾达币", "ADA"),
  cny(7, "CNY", "人民币", "CN¥"),
  usd(8, "USD", "美元", "US\$"),
  eur(9, "EUR", "欧元", "€"),
  jpy(10, "JPY", "日元", "JP¥"),
  hkd(11, "HKD", "港币", "HK\$");

  const CurrencyEnum(this.id, this.name, this.description, this.symbol);

  final int id;
  final String name;
  final String description;
  final String symbol;

  /// 根据ID获取币种枚举
  static CurrencyEnum? getById(int? id) {
    if (id == null) {
      return null;
    }
    for (CurrencyEnum currency in CurrencyEnum.values) {
      if (currency.id == id) {
        return currency;
      }
    }
    return null;
  }

  /// 根据名称获取币种枚举
  static CurrencyEnum? getByName(String? name) {
    if (name == null || name.trim().isEmpty) {
      return null;
    }
    for (CurrencyEnum currency in CurrencyEnum.values) {
      if (currency.name.toLowerCase() == name.trim().toLowerCase()) {
        return currency;
      }
    }
    return null;
  }

  /// 根据ID获取币种名称
  static String? getNameById(int? id) {
    CurrencyEnum? currency = getById(id);
    return currency?.name;
  }

  /// 根据名称获取币种ID
  static int getIdByName(String? name) {
    CurrencyEnum? currency = getByName(name);
    return currency?.id ?? 7; // 默认返回CNY的ID
  }

  /// 验证币种ID是否有效
  static bool isValidId(int? id) {
    return getById(id) != null;
  }

  /// 验证币种名称是否有效
  static bool isValidName(String? name) {
    return getByName(name) != null;
  }

  /// 根据ID获取币种符号
  static String getSymbolById(int? id) {
    CurrencyEnum? currency = getById(id);
    return currency?.symbol ?? "";
  }

  /// 获取所有币种的ID列表
  static List<int> getAllIds() {
    return CurrencyEnum.values.map((e) => e.id).toList();
  }

  /// 获取所有币种的名称列表
  static List<String> getAllNames() {
    return CurrencyEnum.values.map((e) => e.name).toList();
  }

  /// 转换为Map格式
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'symbol': symbol,
    };
  }

  /// 从Map创建枚举实例
  static CurrencyEnum? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return getById(map['id']);
  }

  /// 转换为JSON字符串
  String toJson() {
    return '''{"id": $id, "name": "$name", "description": "$description", "symbol": "$symbol"}''';
  }

  @override
  String toString() {
    return 'CurrencyEnum(id: $id, name: $name, description: $description, symbol: $symbol)';
  }
}