import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  CustomInterceptors(this._client);

  // ignore: unused_field
  final Dio _client;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await setHeader(options);
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  Future<void> setHeader(RequestOptions options) async {
    _setLanguage(options);
    await _setTokens(options, '');
  }

  void _setLanguage(RequestOptions options) {}

  Future<void> _setTokens(RequestOptions options, String? token) async {}
}
