import '../lib/toklink_common.dart';

/// Generate test vectors for manual verification with Java backend
/// Run this script and use the output to test against SignatureDebugController
void main() {
  print('=== Test Vectors for Java Backend Verification ===\n');

  final secret = 'taowu_payment_secret_key_2024'; // Should match Java backend configuration
  final memberId = '1972908017283805186'; // Long type member ID as string

  // Test cases with real-time timestamps and nonces
  final testCases = [
    {
      'name': 'Payment Request',
      'data': {
        'amount': '100.00',
        'currencyId': '1',
        'partnerOrderNo': 'ORDER123456',
      },
    },
    {
      'name': 'Refund Request',
      'data': {
        'walletOrderNo': 'WALLET789',
        'partnerRefundNo': 'REFUND456',
        'refundAmount': '50.00',
        'currencyId': '1',
        'reason': 'Service refund',
      },
    },
    {
      'name': 'Balance Query',
      'data': {
        'currencyId': '1',
      },
    },
    {
      'name': 'Red Packet Create',
      'data': {
        'groupId': '67890',
        'packetType': '2',
        'currencyId': '1',
        'totalAmount': '200.00',
        'totalCount': '10',
        'blessing': 'Happy New Year',
      },
    },
  ];

  for (final testCase in testCases) {
    final name = testCase['name'] as String;
    final data = testCase['data'] as Map<String, dynamic>;

    // Generate signature using the standard API with real-time timestamp and nonce
    final signatureResult = data.generateSignature(secret, memberId);

    final signature = signatureResult.signature;
    final timestamp = signatureResult.responseHeaders['X-Timestamp']!;
    final nonce = signatureResult.responseHeaders['X-Nonce']!;

    print('=== $name ===');
    print('Request Body (JSON):');
    print('${_toJsonString(data)}');
    print('');
    print('Headers:');
    print('X-Signature: $signature');
    print('X-Timestamp: $timestamp');
    print('X-Nonce: $nonce');
    print('Content-Type: application/json');
    print('');
    print('CURL command for validation:');
    print('curl -X POST http://127.0.0.1:10000/api/balance/debug/signature/validate \\');
    print('  -H "Content-Type: application/json" \\');
    print('  -H "X-Signature: $signature" \\');
    print('  -H "X-Timestamp: $timestamp" \\');
    print('  -H "X-Nonce: $nonce" \\');
    print('  -H "Access-Token: d65d3da6-7729-40e2-9ca1-03e0c4fd19cb" \\');
    print('  -d \'${_toJsonString(data)}\'');
    print('');
    print('Expected Result: {"data":{"valid":true,"message":"签名验证成功"}}');
    print('');
    print('Dart Generated Signature: $signature');
    print('${"=" * 60}');
    print('');
  }

  print('=== Instructions ===');
  print('1. Start the wallet-balance service on port 9998');
  print('2. Authenticate and get a valid JWT token');
  print('3. Run the CURL commands above');
  print('4. All should return "valid":true if Dart implementation is correct');
  print('');
  print('Alternative: Use the /debug/signature/quick-test endpoint with just the request body');
  print('to see what Java generates vs what Dart generates.');
}

String _toJsonString(Map<String, dynamic> data) {
  final buffer = StringBuffer();
  buffer.write('{');

  final entries = data.entries.toList();
  for (int i = 0; i < entries.length; i++) {
    final entry = entries[i];
    buffer.write('"${entry.key}":"${entry.value}"');
    if (i < entries.length - 1) {
      buffer.write(',');
    }
  }

  buffer.write('}');
  return buffer.toString();
}