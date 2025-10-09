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

part 'api/product_app_api.dart';

part 'model/api_resp_list_brand_dto.dart';
part 'model/api_resp_list_category_list_dto.dart';
part 'model/api_resp_list_channel_category_tree_dto.dart';
part 'model/api_resp_page_result_dto_channel_list_dto.dart';
part 'model/api_resp_page_result_dto_product_list_item_dto.dart';
part 'model/api_resp_product_detail_dto.dart';
part 'model/api_resp_search_suggestions_dto.dart';
part 'model/brand_dto.dart';
part 'model/category_list_dto.dart';
part 'model/category_tree_dto.dart';
part 'model/channel_category_query_dto.dart';
part 'model/channel_category_tree_dto.dart';
part 'model/hot_keyword_dto.dart';
part 'model/id_request.dart';
part 'model/page_channel_query_dto.dart';
part 'model/page_result_dto.dart';
part 'model/page_result_dto_channel_list_dto.dart';
part 'model/page_result_dto_product_list_item_dto.dart';
part 'model/product_detail_dto.dart';
part 'model/product_query_dto.dart';
part 'model/search_suggestion_item_dto.dart';
part 'model/search_suggestions_dto.dart';
part 'model/sku_item.dart';
part 'model/specification.dart';
part 'model/suggestions_query_dto.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
