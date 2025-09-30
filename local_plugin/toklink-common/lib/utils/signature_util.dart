import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

/// Signature result containing signature and headers
class SignatureResult {
  final String signature;
  final Map<String, String> responseHeaders;

  SignatureResult({
    required this.signature,
    required this.responseHeaders,
  });
}

/// Dart implementation for HMAC-SHA256 signature generation
/// Provides signature generation compatible with Java SignatureUtil
class SignatureUtil {
  /// Generate HMAC-SHA256 signature from parameters (internal use)
  ///
  /// [params] - Map of parameters to sign
  /// [secret] - Secret key for HMAC
  /// Returns hex-encoded signature
  static String _generateSignature(Map<String, String> params, String secret) {
    // Sort parameters and build query string
    final sortedKeys = params.keys.toList()..sort();
    final stringBuffer = StringBuffer();

    for (final key in sortedKeys) {
      final value = params[key];
      if (value != null && value.isNotEmpty) {
        if (stringBuffer.isNotEmpty) {
          stringBuffer.write('&');
        }
        stringBuffer.write('$key=$value');
      }
    }

    final message = stringBuffer.toString();
    final keyBytes = utf8.encode(secret);
    final messageBytes = utf8.encode(message);

    // Generate HMAC-SHA256
    final hmac = Hmac(sha256, keyBytes);
    final digest = hmac.convert(messageBytes);

    return digest.toString(); // Returns hex string
  }

  /// Generate signature with timestamp and nonce
  ///
  /// [obj] - Object to extract parameters from (as Map)
  /// [secret] - Secret key
  /// [memberId] - Member ID to include in signature
  /// Returns SignatureResult with signature and headers
  static SignatureResult generateSignatureWithHeaders(
    Map<String, dynamic> obj,
    String secret,
    String memberId,
  ) {
    // Generate timestamp and nonce
    final timestamp = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final nonce = _generateNonce();

    // Extract sign parameters from object
    final signParams = _toSignParams(obj);

    // Add timestamp, nonce, and memberId
    signParams['timestamp'] = timestamp;
    signParams['nonce'] = nonce;
    signParams['memberId'] = memberId;

    // Generate signature
    final signature = _generateSignature(signParams, secret);

    // Create response headers
    final headers = <String, String>{
      'X-Signature': signature,
      'X-Timestamp': timestamp,
      'X-Nonce': nonce,
    };

    return SignatureResult(
      signature: signature,
      responseHeaders: headers,
    );
  }

  /// Extract sign parameters from object
  /// Converts all non-null, non-empty values to strings
  static Map<String, String> _toSignParams(Map<String, dynamic> obj) {
    final params = <String, String>{};

    for (final entry in obj.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value != null) {
        final strValue = value.toString().trim();
        if (strValue.isNotEmpty) {
          params[key] = strValue;
        }
      }
    }

    return params;
  }

  /// Generate random nonce
  static String _generateNonce() {
    final random = Random.secure();
    const chars = '0123456789abcdef';
    return List.generate(16, (index) => chars[random.nextInt(chars.length)]).join();
  }
}

/// Extension for easier signature generation on Map objects
extension SignatureExtension on Map<String, dynamic> {
  /// Generate signature for this object
  SignatureResult generateSignature(String secret, String memberId) {
    return SignatureUtil.generateSignatureWithHeaders(this, secret, memberId);
  }
}