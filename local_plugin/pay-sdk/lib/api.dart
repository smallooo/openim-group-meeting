//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/notify_data_app_api.dart';
part 'api/personal_pay_order_app_api.dart';

part 'model/api_resp_channel_pay_order.dart';
part 'model/api_resp_list_notify_log_response.dart';
part 'model/api_resp_map_string_object.dart';
part 'model/api_resp_notify_data_response.dart';
part 'model/api_resp_string.dart';
part 'model/channel_pay_order.dart';
part 'model/notify_data_request.dart';
part 'model/notify_data_response.dart';
part 'model/notify_detail_query_dto.dart';
part 'model/notify_log_response.dart';
part 'model/notify_logs_query_dto.dart';
part 'model/notify_query_dto.dart';
part 'model/personal_pay_order_list_query_dto.dart';
part 'model/personal_pay_order_order_no_query_dto.dart';
part 'model/personal_pay_order_payment_id_query_dto.dart';
part 'model/response_result_void.dart';
part 'model/trigger_notify_dto.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
