//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({
    this.basePath = 'http://localhost:9997/v1',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ApiRespBoolean':
          return ApiRespBoolean.fromJson(value);
        case 'ApiRespIPagePublicStrategyResponse':
          return ApiRespIPagePublicStrategyResponse.fromJson(value);
        case 'ApiRespIPageStrFollow':
          return ApiRespIPageStrFollow.fromJson(value);
        case 'ApiRespIPageStrStrategy':
          return ApiRespIPageStrStrategy.fromJson(value);
        case 'ApiRespIPageStrStrategyComment':
          return ApiRespIPageStrStrategyComment.fromJson(value);
        case 'ApiRespIPageStrSubscription':
          return ApiRespIPageStrSubscription.fromJson(value);
        case 'ApiRespIPageStrSubscriptionPayment':
          return ApiRespIPageStrSubscriptionPayment.fromJson(value);
        case 'ApiRespIPageStrSubscriptionRefund':
          return ApiRespIPageStrSubscriptionRefund.fromJson(value);
        case 'ApiRespIPageStrTrader':
          return ApiRespIPageStrTrader.fromJson(value);
        case 'ApiRespListStrStrategy':
          return ApiRespListStrStrategy.fromJson(value);
        case 'ApiRespMapStringObject':
          return ApiRespMapStringObject.fromJson(value);
        case 'ApiRespStrStrategy':
          return ApiRespStrStrategy.fromJson(value);
        case 'ApiRespStrSubscriptionPayment':
          return ApiRespStrSubscriptionPayment.fromJson(value);
        case 'ApiRespStrSubscriptionRefund':
          return ApiRespStrSubscriptionRefund.fromJson(value);
        case 'ApiRespStrTrader':
          return ApiRespStrTrader.fromJson(value);
        case 'ApiRespVoid':
          return ApiRespVoid.fromJson(value);
        case 'FollowQueryDTO':
          return FollowQueryDTO.fromJson(value);
        case 'IPagePublicStrategyResponse':
          return IPagePublicStrategyResponse.fromJson(value);
        case 'IPageStrFollow':
          return IPageStrFollow.fromJson(value);
        case 'IPageStrStrategy':
          return IPageStrStrategy.fromJson(value);
        case 'IPageStrStrategyComment':
          return IPageStrStrategyComment.fromJson(value);
        case 'IPageStrSubscription':
          return IPageStrSubscription.fromJson(value);
        case 'IPageStrSubscriptionPayment':
          return IPageStrSubscriptionPayment.fromJson(value);
        case 'IPageStrSubscriptionRefund':
          return IPageStrSubscriptionRefund.fromJson(value);
        case 'IPageStrTrader':
          return IPageStrTrader.fromJson(value);
        case 'PaymentOrderQueryDTO':
          return PaymentOrderQueryDTO.fromJson(value);
        case 'PublicStrategyQueryDTO':
          return PublicStrategyQueryDTO.fromJson(value);
        case 'PublicStrategyResponse':
          return PublicStrategyResponse.fromJson(value);
        case 'RefundOrderQueryDTO':
          return RefundOrderQueryDTO.fromJson(value);
        case 'RefundRequestDTO':
          return RefundRequestDTO.fromJson(value);
        case 'StrFollow':
          return StrFollow.fromJson(value);
        case 'StrStrategy':
          return StrStrategy.fromJson(value);
        case 'StrStrategyComment':
          return StrStrategyComment.fromJson(value);
        case 'StrSubscription':
          return StrSubscription.fromJson(value);
        case 'StrSubscriptionPayment':
          return StrSubscriptionPayment.fromJson(value);
        case 'StrSubscriptionRefund':
          return StrSubscriptionRefund.fromJson(value);
        case 'StrTrader':
          return StrTrader.fromJson(value);
        case 'StrategyCommentDTO':
          return StrategyCommentDTO.fromJson(value);
        case 'StrategyCommentQueryDTO':
          return StrategyCommentQueryDTO.fromJson(value);
        case 'StrategyQueryDTO':
          return StrategyQueryDTO.fromJson(value);
        case 'StrategyRatingDTO':
          return StrategyRatingDTO.fromJson(value);
        case 'StrategyRatingQueryDTO':
          return StrategyRatingQueryDTO.fromJson(value);
        case 'StrategyViewRecordDTO':
          return StrategyViewRecordDTO.fromJson(value);
        case 'SubscribeTraderDTO':
          return SubscribeTraderDTO.fromJson(value);
        case 'SubscriptionCheckDTO':
          return SubscriptionCheckDTO.fromJson(value);
        case 'SubscriptionQueryDTO':
          return SubscriptionQueryDTO.fromJson(value);
        case 'TraderApplyDTO':
          return TraderApplyDTO.fromJson(value);
        case 'TraderQueryDTO':
          return TraderQueryDTO.fromJson(value);
        case 'TraderUpdateDTO':
          return TraderUpdateDTO.fromJson(value);
        case 'TrendingStrategyQueryDTO':
          return TrendingStrategyQueryDTO.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
