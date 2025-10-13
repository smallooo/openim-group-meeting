import 'package:toklink_common/toklink_common.dart';

void main() {
  print('=== Toklink Signature Utility Example ===\n');

  // Example 1: Generate signature for payment data
  print('1. Generating signature for payment data:');
  final paymentData = {
    'memberId': '1977672558140461058',
    'amount': '30',
    'currencyId': '1',
    'partnerOrderNo': 'PAY202510131749240002',
    'reason': 'Payment for service',
  };

  final secret = 'taowu_payment_secret_key_2024';
  final memberId = '1977672558140461058'; // Long type member ID as string

  final result = paymentData.generateSignature(secret, memberId);

  print('Payment Data: $paymentData');
  print('Generated Signature: ${result.signature}');
  print('Response Headers: ${result.responseHeaders}');
  print('');

  // Example 2: Generate another signature for different data
  print('2. Another signature generation:');
  final balanceData = {
    'currencyId': '1',
  };

  final balanceResult = balanceData.generateSignature(secret, memberId);
  print('Balance Query Data: $balanceData');
  print('Balance Query Signature: ${balanceResult.signature}');
  print('Balance Query Headers: ${balanceResult.responseHeaders}');
  print('');

  // Example 3: Using generated headers
  print('3. Generated headers usage:');
  final headers = result.responseHeaders;
  print('Signature Header: X-Signature = ${headers['X-Signature']}');
  print('Timestamp Header: X-Timestamp = ${headers['X-Timestamp']}');
  print('Nonce Header: X-Nonce = ${headers['X-Nonce']}');
  print('These headers can be used for API requests requiring signature authentication');
  print('');
}