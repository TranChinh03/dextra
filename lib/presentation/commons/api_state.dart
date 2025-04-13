import 'package:dextra/domain/exceptions/api_exception.dart';
import 'package:dextra/domain/models/base_api_response.dart';

enum ApiStatus { idle, loading, hasData, error }

const idle = ApiState.idle;
const loading = ApiState.loading;
const hasData = ApiState.hasData;
const error = ApiState.error;

class ApiState {
  final ApiException? error;
  final BaseApiResponse? errorResponse;
  final BaseApiResponse? dataResponse;
  final ApiStatus status;

  const ApiState({
    this.error,
    required this.status,
    this.errorResponse,
    this.dataResponse,
  });

  factory ApiState.idle() => const ApiState(status: ApiStatus.idle);
  factory ApiState.loading() => const ApiState(status: ApiStatus.loading);
  factory ApiState.hasData({BaseApiResponse? apiResponse}) => ApiState(
      status: ApiStatus.hasData, error: null, dataResponse: apiResponse);
  factory ApiState.error(ApiException? error, BaseApiResponse? errorResponse) =>
      ApiState(
          error: error, status: ApiStatus.error, errorResponse: errorResponse);
}
