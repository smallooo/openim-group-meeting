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

part 'api/email_auth_app_api.dart';
part 'api/google_auth_app_api.dart';
part 'api/member_address_app_api.dart';
part 'api/member_app_api.dart';
part 'api/member_relation_app_api.dart';
part 'api/sms_login_app_api.dart';
part 'api/telegram_auth_app_api.dart';
part 'api/tik_tok_auth_app_api.dart';
part 'api/token_app_api.dart';

part 'model/api_resp_boolean.dart';
part 'model/api_resp_email_auth_response.dart';
part 'model/api_resp_email_login_response.dart';
part 'model/api_resp_email_verify_response.dart';
part 'model/api_resp_google_login_response.dart';
part 'model/api_resp_list_member_address_response.dart';
part 'model/api_resp_map_string_string.dart';
part 'model/api_resp_member_info_response.dart';
part 'model/api_resp_object.dart';
part 'model/api_resp_send_email_code_response.dart';
part 'model/api_resp_string.dart';
part 'model/api_resp_telegram_login_response.dart';
part 'model/api_resp_tik_tok_login_response.dart';
part 'model/api_resp_token_refresh_response.dart';
part 'model/api_resp_void.dart';
part 'model/email_auth_request_command.dart';
part 'model/email_auth_response.dart';
part 'model/email_auth_verify_command.dart';
part 'model/email_code_login_command.dart';
part 'model/email_login_response.dart';
part 'model/email_verify_response.dart';
part 'model/google_auth_url_command.dart';
part 'model/google_login_command.dart';
part 'model/google_login_response.dart';
part 'model/member_address_delete_command.dart';
part 'model/member_address_response.dart';
part 'model/member_address_save_command.dart';
part 'model/member_address_update_command.dart';
part 'model/member_info_response.dart';
part 'model/send_email_code_command.dart';
part 'model/send_email_code_response.dart';
part 'model/send_sms_captcha_command.dart';
part 'model/sms_login_command.dart';
part 'model/telegram_login_command.dart';
part 'model/telegram_login_response.dart';
part 'model/tik_tok_auth_url_command.dart';
part 'model/tik_tok_callback_command.dart';
part 'model/tik_tok_login_command.dart';
part 'model/tik_tok_login_response.dart';
part 'model/token_logout_command.dart';
part 'model/token_refresh_command.dart';
part 'model/token_refresh_response.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
