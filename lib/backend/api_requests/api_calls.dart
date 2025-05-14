import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InsertitemAPICall {
  static Future<ApiCallResponse> call({
    String? productName = '',
    int? price,
    int? quantity,
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "product_name": "${escapeStringForJson(productName)}",
  "price": ${price},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertitemAPI',
      apiUrl: 'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Products',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertuserinfoAPICall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? role = '',
    String? jwt = '',
    String? userId = '',
    String? createdAt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}",
  "email": "${escapeStringForJson(email)}",
  "role": "${escapeStringForJson(role)}",
  "user_id": "${escapeStringForJson(userId)}",
  "created_at": "${escapeStringForJson(createdAt)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertuserinfoAPI',
      apiUrl: 'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Users',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertaddonAPICall {
  static Future<ApiCallResponse> call({
    String? addonName = '',
    int? price,
    int? quantity,
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
 "addon_name": "${escapeStringForJson(addonName)}",
  "price": ${price},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertaddonAPI',
      apiUrl: 'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Addons',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetitemAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getitemAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetuserinfoAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserinfoAPI',
      apiUrl: 'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Users?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetaddonAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getaddonAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Addons?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertTransactionAPICall {
  static Future<ApiCallResponse> call({
    int? totalPrice,
    int? amountReceived,
    int? change,
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "total_price": ${totalPrice},
  "amount_received": ${amountReceived},
  "change": ${change}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertTransactionAPI',
      apiUrl: 'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Transaction',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateitemAPICall {
  static Future<ApiCallResponse> call({
    String? productName = '',
    int? price,
    int? quantity,
    String? jwt = '',
    int? id,
  }) async {
    final ffApiRequestBody = '''
{
  "product_name": "${escapeStringForJson(productName)}",
  "price": ${price},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateitemAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Products?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateaddonAPICall {
  static Future<ApiCallResponse> call({
    String? addonName = '',
    int? price,
    int? quantity,
    String? jwt = '',
    int? id,
  }) async {
    final ffApiRequestBody = '''
{
  "addon_name": "${escapeStringForJson(addonName)}",
  "price": ${price},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateaddonAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Addons?id=eq.${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeladdonAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deladdonAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Addons?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DelproductAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delproductAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Products?id=eq.${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchitemAPICall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchitemAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Products?product_name=ilike.*${searchString}*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PosAPICall {
  static Future<ApiCallResponse> call({
    dynamic pAddonIdsJson,
    dynamic pProductIdsJson,
    String? jwt = '',
  }) async {
    final pAddonIds = _serializeJson(pAddonIdsJson, true);
    final pProductIds = _serializeJson(pProductIdsJson, true);
    final ffApiRequestBody = '''
{
  "p_product_ids": ${pProductIds},
  "p_addon_ids": ${pAddonIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'posAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/initiate_transaction',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmposAPICall {
  static Future<ApiCallResponse> call({
    int? pAmountReceived,
    String? pPaymentMethod = '',
    int? pTransactionId,
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_amount_received": ${pAmountReceived},
  "p_payment_method": "${escapeStringForJson(pPaymentMethod)}",
  "p_transaction_id": ${pTransactionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmposAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/confirm_transaction',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetposAPICall {
  static Future<ApiCallResponse> call({
    int? transactionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getposAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/get_transaction_details',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
      },
      params: {
        'transac_id': transactionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRoleAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRoleAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/Users?select=role',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RoleAPICall {
  static Future<ApiCallResponse> call({
    String? pUserId = '',
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
"p_user_id": "b3695c18-b770-495e-ad3f-bc00486eeaf5"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'roleAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/get_user_role',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetsaleslogsAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? dateTime = '',
    String? items = '',
    double? totalPrice,
    double? amountReceived,
    double? change,
    String? paymentMethod = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getsaleslogsAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/get_sales_logs',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? dateTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].date_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? totalPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? amountReceived(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount_received''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? change(dynamic response) => (getJsonField(
        response,
        r'''$[:].change''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? items(dynamic response) => (getJsonField(
        response,
        r'''$[:].items''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? paymentMethod(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_method''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DashboardsummaryAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? vAmountToday,
    int? vAmountWeek,
    int? vAmountMonth,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboardsummaryAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/get_dashboard_summary',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? amountToday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.earningsToday''',
      ));
  static int? amountWeek(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.earningsWeek''',
      ));
  static int? amountMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.earningsMonth''',
      ));
}

class SaleschartAPICall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? totalSales,
    String? transactionWeek = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saleschartAPI',
      apiUrl:
          'https://pljztqthmpvsvewmutmt.supabase.co/rest/v1/rpc/get_sales_linechart_data',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsanp0cXRobXB2c3Zld211dG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMxNzE5NzgsImV4cCI6MjA1ODc0Nzk3OH0.kcDcnT4qExlFO--atY1h8cyxKlg68-Tu0RZx3zZ227g',
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? totalSales(dynamic response) => (getJsonField(
        response,
        r'''$[:].totalSales''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? transacDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
