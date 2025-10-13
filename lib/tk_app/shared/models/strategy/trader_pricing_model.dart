class TraderPricing {
  final String id;
  final String traderId;
  final String strategyType;
  final double monthlyPrice;
  final double quarterlyPrice;
  final double yearlyPrice;
  final String currency;
  final int isActive;

  TraderPricing({
    required this.id,
    required this.traderId,
    required this.strategyType,
    required this.monthlyPrice,
    required this.quarterlyPrice,
    required this.yearlyPrice,
    required this.currency,
    required this.isActive,
  });

  factory TraderPricing.fromJson(Map<String, dynamic> json) {
    return TraderPricing(
      id: json['id'] ?? '',
      traderId: json['traderId'] ?? '',
      strategyType: json['strategyType'] ?? '',
      monthlyPrice: (json['monthlyPrice'] as num?)?.toDouble() ?? 0.0,
      quarterlyPrice: (json['quarterlyPrice'] as num?)?.toDouble() ?? 0.0,
      yearlyPrice: (json['yearlyPrice'] as num?)?.toDouble() ?? 0.0,
      currency: json['currency'] ?? '',
      isActive: json['isActive'] ?? 0,
    );
  }
}