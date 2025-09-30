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

/// Dart implementation of the Java SignatureUtil
/// Provides HMAC-SHA256 signature generation and validation
class SignatureUtil {
  static const int maxTimeWindowSeconds = 300; // 5 minutes

  /// Generate HMAC-SHA256 signature from parameters
  ///
  /// [params] - Map of parameters to sign
  /// [secret] - Secret key for HMAC
  /// Returns hex-encoded signature
  static String generateSignature(Map<String, String> params, String secret) {
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
  /// [userId] - User ID to include in signature
  /// Returns SignatureResult with signature and headers
  static SignatureResult generateSignatureWithHeaders(
    Map<String, dynamic> obj,
    String secret,
    String userId,
  ) {
    // Generate timestamp and nonce
    final timestamp = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final nonce = _generateNonce();

    // Extract sign parameters from object
    final signParams = _toSignParams(obj);

    // Add timestamp, nonce, and userId
    signParams['timestamp'] = timestamp;
    signParams['nonce'] = nonce;
    signParams['userId'] = userId;

    // Generate signature
    final signature = generateSignature(signParams, secret);

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

  /// Validate signature
  ///
  /// [obj] - Object containing parameters to validate
  /// [secret] - Secret key
  /// [signature] - Received signature
  /// [timestamp] - Received timestamp
  /// [nonce] - Received nonce
  /// [userId] - User ID
  /// Returns true if signature is valid
  static bool validateSignature(
    Map<String, dynamic> obj,
    String secret,
    String signature,
    String timestamp,
    String nonce,
    String userId,
  ) {
    try {
      // 1. Validate time window
      if (!_isWithinTimeWindow(timestamp)) {
        return false;
      }

      // 2. Extract sign parameters
      final signParams = _toSignParams(obj);

      // 3. Add timestamp, nonce, and userId
      signParams['timestamp'] = timestamp;
      signParams['nonce'] = nonce;
      signParams['userId'] = userId;

      // 4. Generate expected signature
      final expectedSignature = generateSignature(signParams, secret);

      // 5. Constant time comparison
      return _constantTimeEquals(signature, expectedSignature);

    } catch (e) {
      return false;
    }
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

  /// Check if timestamp is within time window
  static bool _isWithinTimeWindow(String timestampStr) {
    try {
      final timestamp = int.parse(timestampStr);
      final now = DateTime.now().millisecondsSinceEpoch;

      // Convert seconds to milliseconds if needed
      final timestampMs = timestamp < 1000000000000
          ? timestamp * 1000
          : timestamp;

      final timeDiffSeconds = (now - timestampMs).abs() ~/ 1000;
      return timeDiffSeconds <= maxTimeWindowSeconds;

    } catch (e) {
      return false;
    }
  }

  /// Generate random nonce
  static String _generateNonce() {
    final random = Random.secure();
    const chars = '0123456789abcdef';
    return List.generate(16, (index) => chars[random.nextInt(chars.length)]).join();
  }

  /// Constant time string comparison to prevent timing attacks
  static bool _constantTimeEquals(String a, String b) {
    if (a.length != b.length) {
      return false;
    }

    int result = 0;
    for (int i = 0; i < a.length; i++) {
      result |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }

    return result == 0;
  }
}

/// Extension for easier signature generation on Map objects
extension SignatureExtension on Map<String, dynamic> {
  /// Generate signature for this object
  SignatureResult generateSignature(String secret, String userId) {
    return SignatureUtil.generateSignatureWithHeaders(this, secret, userId);
  }

  /// Validate signature for this object
  bool validateSignature(
    String secret,
    String signature,
    String timestamp,
    String nonce,
    String userId,
  ) {
    return SignatureUtil.validateSignature(
      this,
      secret,
      signature,
      timestamp,
      nonce,
      userId,
    );
  }
}