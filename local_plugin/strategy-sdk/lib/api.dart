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

part 'api/follow_app_api.dart';
part 'api/strategy_app_api.dart';
part 'api/strategy_comment_app_api.dart';
part 'api/strategy_rating_app_api.dart';
part 'api/subscription_app_api.dart';
part 'api/trader_app_api.dart';
part 'api/trader_opinion_app_api.dart';
part 'api/trader_subscription_pricing_app_api.dart';

part 'model/api_resp_boolean.dart';
part 'model/api_resp_i_page_public_strategy_response.dart';
part 'model/api_resp_i_page_str_follow.dart';
part 'model/api_resp_i_page_str_strategy.dart';
part 'model/api_resp_i_page_str_strategy_comment.dart';
part 'model/api_resp_i_page_str_subscription.dart';
part 'model/api_resp_i_page_str_subscription_payment.dart';
part 'model/api_resp_i_page_str_subscription_refund.dart';
part 'model/api_resp_i_page_trader_list_response_dto.dart';
part 'model/api_resp_i_page_trader_opinion_response_dto.dart';
part 'model/api_resp_i_page_trader_strategy_response_dto.dart';
part 'model/api_resp_list_str_strategy.dart';
part 'model/api_resp_list_str_trader_subscription_pricing.dart';
part 'model/api_resp_map_string_object.dart';
part 'model/api_resp_payment_status_info.dart';
part 'model/api_resp_str_strategy.dart';
part 'model/api_resp_str_subscription_payment.dart';
part 'model/api_resp_str_subscription_refund.dart';
part 'model/api_resp_str_trader.dart';
part 'model/api_resp_str_trader_subscription_pricing.dart';
part 'model/api_resp_trader_status_dto.dart';
part 'model/api_resp_void.dart';
part 'model/follow_query_dto.dart';
part 'model/i_page_public_strategy_response.dart';
part 'model/i_page_str_follow.dart';
part 'model/i_page_str_strategy.dart';
part 'model/i_page_str_strategy_comment.dart';
part 'model/i_page_str_subscription.dart';
part 'model/i_page_str_subscription_payment.dart';
part 'model/i_page_str_subscription_refund.dart';
part 'model/i_page_trader_list_response_dto.dart';
part 'model/i_page_trader_opinion_response_dto.dart';
part 'model/i_page_trader_strategy_response_dto.dart';
part 'model/payment_order_query_dto.dart';
part 'model/payment_status_info.dart';
part 'model/public_strategy_query_dto.dart';
part 'model/public_strategy_response.dart';
part 'model/refund_order_query_dto.dart';
part 'model/refund_request_dto.dart';
part 'model/str_follow.dart';
part 'model/str_strategy.dart';
part 'model/str_strategy_comment.dart';
part 'model/str_subscription.dart';
part 'model/str_subscription_payment.dart';
part 'model/str_subscription_refund.dart';
part 'model/str_trader.dart';
part 'model/str_trader_subscription_pricing.dart';
part 'model/strategy_comment_dto.dart';
part 'model/strategy_comment_query_dto.dart';
part 'model/strategy_query_dto.dart';
part 'model/strategy_rating_dto.dart';
part 'model/strategy_rating_query_dto.dart';
part 'model/strategy_view_record_dto.dart';
part 'model/subscribe_trader_dto.dart';
part 'model/subscription_check_dto.dart';
part 'model/subscription_query_dto.dart';
part 'model/trader_apply_dto.dart';
part 'model/trader_list_response_dto.dart';
part 'model/trader_opinion_create_dto.dart';
part 'model/trader_opinion_response_dto.dart';
part 'model/trader_opinion_update_dto.dart';
part 'model/trader_query_dto.dart';
part 'model/trader_status_dto.dart';
part 'model/trader_strategy_query_dto.dart';
part 'model/trader_strategy_response_dto.dart';
part 'model/trader_subscription_pricing_dto.dart';
part 'model/trader_update_dto.dart';
part 'model/trending_strategy_query_dto.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
