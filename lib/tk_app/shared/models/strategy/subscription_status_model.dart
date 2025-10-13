class SubscriptionStatus {
  final bool isSubscribed;

  SubscriptionStatus({required this.isSubscribed});

  factory SubscriptionStatus.fromJson(Map<String, dynamic> json) {
    return SubscriptionStatus(
      isSubscribed: json['isSubscribed'] ?? false,
    );
  }
}