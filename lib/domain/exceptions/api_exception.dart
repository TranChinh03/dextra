import 'package:collection/collection.dart';

const otpSuspendedStatusCode = -10001;

class ApiException {
  final int code;
  ApiException({required this.code});

  ApiError get error {
    return ApiError.values.firstWhereOrNull((e) => e.value == code) ??
        ApiError.unknown;
  }
}

enum ApiError {
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  methodNotAllowed(405),
  notAcceptable(406),
  requestTimeout(408),
  unsupportedMediaType(415),
  tooManyRequests(429),
  internalServerError(500),
  notImplemented(501),
  badGateway(502),
  serviceUnavailable(503),
  gatewayTimeout(504),
  otpSuspended(-10001),
  unknown(-1);

  final int value;
  const ApiError(this.value);
}
