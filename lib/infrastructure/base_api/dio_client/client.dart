import 'package:dextra/domain/enum/client_domain.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/infrastructure/base_api/dio_client/interceptor.dart';
import 'package:dextra/infrastructure/base_api/dio_client/response_handler.dart';
import 'package:dextra/shareds/config/app_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IApiClient)
class DioClient implements IApiClient {
  DioClient() {
    initDioClient();
  }

  late Dio _client;

  final _responseHandler = const ResponseHandler();

  void initDioClient() {
    _client = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: Duration(milliseconds: AppConfig.apiConnectionTimeout),
      ),
    );

    _addInterceptors();
  }

  @override
  Future<BaseApiResponse<T>> get<T, R>(
    dynamic path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  }) async {
    try {
      final response = await _client.get(
        path,
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      return _responseHandler.onSuccess<T, R>(response, parser);
    } on DioException catch (error) {
      return _responseHandler.onError(error);
    }
  }

  @override
  Future<BaseApiResponse<T?>> post<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  }) async {
    try {
      final response = await _client.post(
        path,
        queryParameters: queryParams,
        data: data,
        options: Options(headers: headers),
      );

      return _responseHandler.onSuccess(response, parser);
    } on DioException catch (error) {
      return _responseHandler.onError(error);
    }
  }

  @override
  Future<BaseApiResponse<T?>> put<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  }) async {
    try {
      final response = await _client.put(
        path,
        queryParameters: queryParams,
        data: data,
        options: Options(headers: headers),
      );
      return _responseHandler.onSuccess(response, parser);
    } on DioException catch (error) {
      return _responseHandler.onError(error);
    }
  }

  @override
  Future<BaseApiResponse<T?>> delete<T, R>(
    dynamic path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    R? Function(dynamic)? parser,
    ClientDomain clientDomain = ClientDomain.defaultDomain,
  }) async {
    try {
      final response = await _client.delete(
        path,
        queryParameters: queryParams,
        data: data,
        options: Options(headers: headers),
      );

      return _responseHandler.onSuccess(response, parser);
    } on DioException catch (error) {
      return _responseHandler.onError(error);
    }
  }

  void _addInterceptors() {
    _client.options.headers['Idempotency-Key'] = AppConfig.idempotencyKey;
    _client.interceptors.add(CustomInterceptors(_client));
  }

  @override
  Future<void> setToken(String token) {
    _client.options.headers['Authorization'] = 'Bearer $token';
    return Future.value();
  }
}
