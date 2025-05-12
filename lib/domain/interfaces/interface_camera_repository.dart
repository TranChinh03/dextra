import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';

abstract class ICameraRepository {
  Future<BaseApiResponse<List<Camera>>> getCameras();
}
