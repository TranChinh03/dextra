import 'package:dextra/domain/models/base_api_response.dart';

extension ClientListExtension on List {
  BaseApiResponse<T> parseToBaseApiResponse<T, R>(Function(dynamic) parser) {
    return BaseApiResponse<T>(
      data: map((item) => (parser(item) as R)).toList(),
    );
  }
}

extension ClientMapExtension on Map {
  BaseApiResponse<T> parseToBaseApiResponse<T, R>(Function(dynamic) parser) {
    return BaseApiResponse<T>(data: (parser(this) as R));
  }
}
