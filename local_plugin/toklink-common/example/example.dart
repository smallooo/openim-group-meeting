import 'package:toklink_common/toklink_common.dart';

void main() {
  print('=== Toklink Signature Utility Example ===\n');

  // Example 1: Generate signature for payment data
  print('1. Generating signature for payment data:');
  final paymentData = {
    'memberId': '12345',
    'amount': '100.00',
    'currencyId': '1',
    'partnerOrderNo': 'ORDER123456',
    'reason': 'Payment for service',
  };

  final secret = 'taowu_payment_secret_key_2024';
  final userId = '1972908017283805186';

  final result = paymentData.generateSignature(secret, userId);

  print('Payment Data: $paymentData');
  print('Generated Signature: ${result.signature}');
  print('Response Headers: ${result.responseHeaders}');
  print('');

  // Example 2: Manual signature generation
  print('2. Manual signature generation:');
  final manualParams = {
    'memberId': '1972908017283805186',
    'amount': '100.00',
    'currencyId': '1',
    'timestamp': '1640995200',
    'nonce': 'abc123def456',
    'userId': '1972908017283805186',
  };

  final manualSignature = SignatureUtil.generateSignature(manualParams, secret);
  print('Manual Parameters: $manualParams');
  print('Manual Signature: $manualSignature');
  print('');

  // Example 3: Signature validation
  print('3. Signature validation:');
  final headers = result.responseHeaders;
  final isValid = paymentData.validateSignature(
    secret,
    headers['X-Signature']!,
    headers['X-Timestamp']!,
    headers['X-Nonce']!,
    userId,
  );

  print('Validation Result: $isValid');
  print('');

  // Example 4: Invalid signature validation
  print('4. Invalid signature validation:');
  final invalidSignature = paymentData.validateSignature(
    secret,
    'invalid-signature',
    headers['X-Timestamp']!,
    headers['X-Nonce']!,
    userId,
  );

  print('Invalid Signature Result: $invalidSignature');
  print('');

  // Example 5: Time window validation
  print('5. Time window validation (old timestamp):');
  final oldTimestamp = '1000000000'; // Very old timestamp
  final oldTimeValidation = paymentData.validateSignature(
    secret,
    headers['X-Signature']!,
    oldTimestamp,
    headers['X-Nonce']!,
    userId,
  );

  print('Old Timestamp Result: $oldTimeValidation');
}