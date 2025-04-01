import 'dart:io';

import 'package:dextra/domain/exceptions/api_exception.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dio/dio.dart';

import 'extensions.dart';

class ResponseHandler {
  const ResponseHandler();

  BaseApiResponse<T> onSuccess<T, R>(
    Response<dynamic> response,
    R Function(dynamic)? parser,
  ) {
    // print(response.data.toString() + response.requestOptions.path);
    final responseData = response.data;

    if (parser == null) {
      return BaseApiResponse(data: responseData);
    }

    if (responseData is List) {
      // print(response.data.toString() + 'LIST');
      return responseData.parseToBaseApiResponse<T, R>(parser);
    }

    if (responseData is Map) {
      // print(response.data.toString() + 'MAP');
      return responseData.parseToBaseApiResponse<T, R>(parser);
    }
    // print(response.data.toString() + 'DEFAULT PARSER');

    return BaseApiResponse(data: parser(responseData));
  }

  BaseApiResponse<T> onError<T>(DioException e) {
    // print("ERROR_" + e.toString() + e.requestOptions.path);
    // print("ERROR_" + e.requestOptions.headers.toString());
    BaseApiResponse<T> result = const BaseApiResponse();

    var httpStatusCode = e.response?.statusCode ?? -1;
    if (e.error is SocketException) {
      httpStatusCode = ApiError.requestTimeout.value;
    }
    ApiException error = ApiException(code: httpStatusCode);
    final responseData = e.response?.data;

    Map<String, dynamic> errorObject = {};
    if (responseData is Map) {
      errorObject = responseData as Map<String, dynamic>;
    }

    String? code;
    if (errorObject['code'] is String) {
      code = errorObject['code'];
    }

    String? source;
    if (errorObject['source'] is String) {
      source = errorObject['source'];
    }

    String? message;
    if (errorObject['message'] is String) {
      message = errorObject['message'];
    }

    String? errorReason;
    if (errorObject['Error Reason'] is String) {
      errorReason = errorObject['Error Reason'];
    }

    Map<String, dynamic> messageParams = {};
    if (errorObject['messageParams'] is Map) {
      messageParams = errorObject['messageParams'] as Map<String, dynamic>;
    }

    Map<String, dynamic> errorData = {};
    if (errorObject['errorData'] is Map) {
      errorData = errorObject['errorData'] as Map<String, dynamic>;
    }

    return result.copyWith(
      error: error,
      code: code,
      messageParams: messageParams,
      source: source,
      message: message ?? errorReason,
      errorData: errorData,
    );
  }
}
