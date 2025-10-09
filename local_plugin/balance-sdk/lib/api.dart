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

part 'api/fund_app_api.dart';
part 'api/payment_password_app_api.dart';
part 'api/red_packet_app_api.dart';
part 'api/wallet_payment_app_api.dart';
part 'api/wallet_refund_app_api.dart';

part 'model/api_resp_balance.dart';
part 'model/api_resp_list_balance.dart';
part 'model/api_resp_payment_password_status_vo.dart';
part 'model/api_resp_payment_process_result_vo.dart';
part 'model/api_resp_receive_red_packet_result_vo.dart';
part 'model/api_resp_red_packet_vo.dart';
part 'model/api_resp_refund_process_result_vo.dart';
part 'model/api_resp_string.dart';
part 'model/api_resp_void.dart';
part 'model/balance.dart';
part 'model/balance_query_dto.dart';
part 'model/create_red_packet_dto.dart';
part 'model/currency_balance_query_dto.dart';
part 'model/payment_password_status_vo.dart';
part 'model/payment_password_verify_dto.dart';
part 'model/payment_process_dto.dart';
part 'model/payment_process_result_vo.dart';
part 'model/receive_red_packet_dto.dart';
part 'model/receive_red_packet_result_vo.dart';
part 'model/red_packet_detail_query_dto.dart';
part 'model/red_packet_record_vo.dart';
part 'model/red_packet_vo.dart';
part 'model/refund_password_verify_dto.dart';
part 'model/refund_process_dto.dart';
part 'model/refund_process_result_vo.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
