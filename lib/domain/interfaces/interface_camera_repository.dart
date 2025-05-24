import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';

abstract class ICameraRepository {
  Future<BaseApiResponse<List<Camera>>> getCameras();
  Future<BaseApiResponse<List<String>>> getDistricts();
  Future<BaseApiResponse<List<String>>> getVehicles();
  Future<BaseApiResponse<List<Camera>?>> searchCameras(String name);
}
