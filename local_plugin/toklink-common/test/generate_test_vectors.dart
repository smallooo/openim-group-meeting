import '../lib/toklink_common.dart';

/// Generate test vectors for manual verification with Java backend
/// Run this script and use the output to test against SignatureDebugController
void main() {
  print('=== Test Vectors for Java Backend Verification ===\n');

  final secret = 'taowu_payment_secret_key_2024'; // Should match Java backend configuration
  final memberId = '1973018638679584770'; // Long type member ID as string

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
    {
      'name': 'Wallet Fund Balance Query - CNY',
      'data': {
        'currencyId': 1,
      },
      'method': 'POST',
      'endpoint': '/wallet-fund/currency',
    },
    {
      'name': 'Wallet Fund Balance Query - USD',
      'data': {
        'currencyId': 2,
      },
      'method': 'POST',
      'endpoint': '/wallet-fund/currency',
    },
    {
      'name': 'Wallet Fund Balance Query - BTC',
      'data': {
        'currencyId': 3,
      },
      'method': 'POST',
      'endpoint': '/wallet-fund/currency',
    },
    {
      'name': 'Wallet Fund Balance List Query',
      'data': {
        'pageNum': 1,
        'pageSize': 10,
      },
      'method': 'POST',
      'endpoint': '/wallet-fund/list',
    },
    {
      'name': 'Wallet Fund Balance Summary',
      'data': {},
      'method': 'POST',
      'endpoint': '/wallet-fund/summary',
    },
  ];

  for (final testCase in testCases) {
    final name = testCase['name'] as String;
    final data = testCase['data'] as Map<String, dynamic>;
    final method = testCase['method'] as String? ?? 'POST';
    final endpoint = testCase['endpoint'] as String?;

    // Generate signature using the standard API with real-time timestamp and nonce
    final signatureResult = data.generateSignature(secret, memberId);

    final signature = signatureResult.signature;
    final timestamp = signatureResult.responseHeaders['X-Timestamp']!;
    final nonce = signatureResult.responseHeaders['X-Nonce']!;

    print('=== $name ===');

    print('Request Method: $method');
    if (endpoint != null) {
      print('Endpoint: $endpoint');
    }
    print('Request Body (JSON):');
    print('${_toJsonString(data)}');

    print('');
    print('Headers:');
    print('X-Signature: $signature');
    print('X-Timestamp: $timestamp');
    print('X-Nonce: $nonce');
    print('Content-Type: application/json');
    print('Access-Token: cccf42b4-5f6d-4bb3-8439-434d9526e89b');
    print('');

    if (endpoint != null && endpoint.startsWith('/wallet-fund/')) {
      print('CURL command for API call:');
      print('curl -X POST "http://127.0.0.1:9998/v1$endpoint" \\');
      print('  -H "Content-Type: application/json" \\');
      print('  -H "X-Signature: $signature" \\');
      print('  -H "X-Timestamp: $timestamp" \\');
      print('  -H "X-Nonce: $nonce" \\');
      print('  -H "Access-Token: cccf42b4-5f6d-4bb3-8439-434d9526e89b" \\');
      print('  -d \'${_toJsonString(data)}\'');
      print('');
      print('CURL command for signature validation:');
      print('curl -X POST http://127.0.0.1:9998/v1/debug/signature/validate \\');
    } else {
      print('CURL command for validation:');
      print('curl -X POST http://127.0.0.1:10000/api/balance/debug/signature/validate \\');
    }

    print('  -H "Content-Type: application/json" \\');
    print('  -H "X-Signature: $signature" \\');
    print('  -H "X-Timestamp: $timestamp" \\');
    print('  -H "X-Nonce: $nonce" \\');
    print('  -H "Access-Token: cccf42b4-5f6d-4bb3-8439-434d9526e89b" \\');
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
  print('=== Available Balance API Endpoints ===');
  print('POST /v1/wallet-fund/currency - Get balance for specific currency');
  print('POST /v1/wallet-fund/list - Get balance list with pagination');
  print('POST /v1/wallet-fund/summary - Get balance summary for all currencies');
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