import 'package:dextra/domain/exceptions/api_exception.dart';
import 'package:easy_localization/easy_localization.dart';

class BaseApiResponse<T> {
  const BaseApiResponse({
    this.code,
    this.messageParams,
    this.source,
    this.message,
    this.data,
    this.error,
    this.errorData,
  });

  final String? code;
  final Map<String, dynamic>? messageParams;
  final String? source;
  final String? message;
  final dynamic data;
  final ApiException? error;
  final dynamic errorData;

  String? get localizedErrorMessage {
    if (code != null) {
      String localizedMessageKey = 'ApiError.$code';
      if (trExists(localizedMessageKey)) {
        return tr(localizedMessageKey);
      } else {
        return tr('ApiError.UNKNOWN');
      }
    }
    return null;
  }

  factory BaseApiResponse.fromJson(
    Map<String, dynamic> json, [
    T Function(Object? data)? parser,
  ]) {
    String? code = "";
    if (json['code'] is String) {
      code = json['code'];
    }

    return BaseApiResponse(
      code: code,
      message: json['message'],
      data: json['result'] != null
          ? parser?.call(json['result'])
          : json['results'] != null
              ? parser?.call(json['results'])
              : json['data'] != null
                  ? parser?.call(json['data'])
                  : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'source': source,
      'message': message,
      'data': data,
      'messageParams': messageParams,
      'errorData': errorData,
    };
  }

  BaseApiResponse<T> copyWith({
    String? code,
    Map<String, dynamic>? messageParams,
    Map<String, dynamic>? params,
    String? source,
    String? message,
    T? data,
    ApiException? error,
    dynamic errorData,
  }) {
    return BaseApiResponse(
      code: code ?? this.code,
      messageParams: messageParams ?? this.messageParams,
      source: source ?? this.source,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error,
      errorData: errorData ?? this.errorData,
    );
  }

  BaseApiResponse<U> asType<U>(U data) {
    return BaseApiResponse<U>(
      code: code,
      message: message,
      data: data,
      error: error,
      errorData: errorData,
    );
  }
}
