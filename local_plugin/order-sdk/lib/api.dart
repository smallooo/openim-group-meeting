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

part 'api/order_app_api.dart';
part 'api/order_review_app_api.dart';
part 'api/payment_callback_app_api.dart';
part 'api/refund_app_api.dart';

part 'model/api_resp_order_create_response_dto.dart';
part 'model/api_resp_order_detail_vo.dart';
part 'model/api_resp_order_page_vo.dart';
part 'model/api_resp_payment_cancel_response.dart';
part 'model/api_resp_payment_query_response.dart';
part 'model/api_resp_payment_vo.dart';
part 'model/api_resp_void.dart';
part 'model/buyer_info_vo.dart';
part 'model/customer_service_info_vo.dart';
part 'model/order_create_dto.dart';
part 'model/order_create_response_dto.dart';
part 'model/order_create_vo.dart';
part 'model/order_detail_vo.dart';
part 'model/order_item_dto.dart';
part 'model/order_item_vo.dart';
part 'model/order_list_vo.dart';
part 'model/order_page_vo.dart';
part 'model/order_review_request.dart';
part 'model/order_review_vo.dart';
part 'model/order_status_timeline_vo.dart';
part 'model/payment_callback_response_dto.dart';
part 'model/payment_cancel_request.dart';
part 'model/payment_cancel_response.dart';
part 'model/payment_query_request.dart';
part 'model/payment_query_response.dart';
part 'model/payment_vo.dart';
part 'model/refund_application_vo.dart';
part 'model/refund_apply_request.dart';
part 'model/refund_approve_request.dart';
part 'model/refund_cancel_result_vo.dart';
part 'model/refund_confirm_request.dart';
part 'model/refund_confirm_result_vo.dart';
part 'model/refund_page_vo.dart';
part 'model/refund_query_request.dart';
part 'model/refund_query_response.dart';
part 'model/response_result_order_review_vo.dart';
part 'model/response_result_refund_application_vo.dart';
part 'model/response_result_refund_cancel_result_vo.dart';
part 'model/response_result_refund_confirm_result_vo.dart';
part 'model/response_result_refund_page_vo.dart';
part 'model/response_result_refund_query_response.dart';
part 'model/seller_info_vo.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
