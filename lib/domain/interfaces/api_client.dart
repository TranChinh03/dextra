

import 'package:dextra/domain/enum/client_domain.dart';
import 'package:dextra/domain/models/base_api_response.dart';

abstract class IApiClient {
  Future<BaseApiResponse<T>> get<T, R>(
    dynamic path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  });
  Future<BaseApiResponse<T?>> post<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  });
  Future<BaseApiResponse<T?>> put<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  });
  Future<BaseApiResponse<T?>> delete<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  });

  Future<void> setToken(String token);
}
