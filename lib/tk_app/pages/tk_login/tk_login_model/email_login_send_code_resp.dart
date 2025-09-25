class EmailLoginSendCodeResp {
  final String email;
  final String deviceId;
  EmailLoginSendCodeResp({required this.email, required this.deviceId});

  factory EmailLoginSendCodeResp.fromMap(Map<String, dynamic> map) {
    return EmailLoginSendCodeResp(email: map['email'] ?? '', deviceId: map['deviceId'] ?? '');
  }
}


