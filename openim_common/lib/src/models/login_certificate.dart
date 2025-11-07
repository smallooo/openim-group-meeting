import 'dart:convert';

class LoginCertificate {
  String userID;
  String imToken;
  String chatToken;
  String accessToken;

  LoginCertificate.fromJson(Map<String, dynamic> map)
      : userID = map["userID"] ?? '',
        imToken = map["imToken"] ?? '',
        chatToken = map['chatToken'] ?? '',
        accessToken = map['accessToken'] ?? '';

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userID'] = userID;
    data['imToken'] = imToken;
    data['chatToken'] = chatToken;
    data['accessToken'] = accessToken;
    return data;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
