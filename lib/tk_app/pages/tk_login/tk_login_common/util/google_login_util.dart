class GoogleLoginResult {
  final bool success;
  final String accessToken;
  final String? errorMessage;
  GoogleLoginResult({required this.success, this.accessToken = '', this.errorMessage});
}

class GoogleLoginUtil {
  Future<GoogleLoginResult> login() async {
    // TODO: 接入谷歌登录，此处返回失败占位
    return GoogleLoginResult(success: false, errorMessage: 'Not implemented');
  }
}


