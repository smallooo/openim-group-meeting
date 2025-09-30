# Toklink Common

Common utilities for Toklink Dart/Flutter SDKs.

## Features

- **Signature Utilities**: HMAC-SHA256 signature generation and validation
- **Security**: Time window validation, nonce uniqueness, constant-time comparison

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  toklink_common: ^1.0.0
```

## Usage

### Signature Generation

```dart
import 'package:toklink_common/toklink_common.dart';

void main() {
  // Example payment data
  final paymentData = {
    'memberId': '12345',
    'amount': '100.00',
    'currencyId': '1',
    'partnerOrderNo': 'ORDER123456',
  };

  final secret = 'taowu_payment_secret_key_2024';
  final memberId = '12345';

  // Generate signature with headers
  final result = paymentData.generateSignature(secret, memberId);

  print('Signature: ${result.signature}');
  print('Headers: ${result.responseHeaders}');

  // Headers will contain:
  // X-Signature: the generated signature
  // X-Timestamp: current timestamp
  // X-Nonce: random nonce
}
```

### Signature Validation

```dart
import 'package:toklink_common/toklink_common.dart';

void main() {
  final receivedData = {
    'memberId': '12345',
    'amount': '100.00',
    'currencyId': '1',
    'partnerOrderNo': 'ORDER123456',
  };

  final secret = 'taowu_payment_secret_key_2024';
  final memberId = '12345';
  final receivedSignature = 'received-signature-from-header';
  final receivedTimestamp = 'received-timestamp-from-header';
  final receivedNonce = 'received-nonce-from-header';

  // Validate signature
  final isValid = receivedData.validateSignature(
    secret,
    receivedSignature,
    receivedTimestamp,
    receivedNonce,
    memberId,
  );

  print('Signature valid: $isValid');
}
```

### Manual Signature Operations

```dart
import 'package:toklink_common/toklink_common.dart';

void main() {
  // Manual parameter signing
  final params = {
    'memberId': '12345',
    'amount': '100.00',
    'timestamp': '1640995200',
    'nonce': 'abc123def456',
    'memberId': '12345',
  };

  final secret = 'taowu_payment_secret_key_2024';
  final signature = SignatureUtil.generateSignature(params, secret);

  print('Manual signature: $signature');
}
```

## Security Features

### Time Window Validation
- Signatures are only valid within a 5-minute time window
- Prevents replay attacks with old signatures

### Nonce Uniqueness
- Each signature requires a unique nonce
- Prevents duplicate request attacks (Note: Dart version doesn't include Redis storage, implement as needed)

### Constant-Time Comparison
- Signature validation uses constant-time comparison
- Prevents timing-based attacks

## Algorithm Details

1. **Parameter Processing**:
   - Extract all non-null, non-empty parameters
   - Convert all values to strings
   - Add timestamp, nonce, and memberId

2. **String Construction**:
   - Sort parameters alphabetically by key
   - Build query string: `key1=value1&key2=value2...`

3. **HMAC-SHA256**:
   - Use provided secret as HMAC key
   - Sign the constructed string
   - Return hex-encoded result

## Compatibility

This Dart implementation is compatible with the Java `SignatureUtil` class and produces identical signatures for the same input parameters.

## Requirements

- Dart SDK: >=2.12.0 <4.0.0
- Dependencies: crypto, convert