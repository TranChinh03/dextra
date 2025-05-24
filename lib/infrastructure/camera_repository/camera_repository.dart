import 'dart:convert';

import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:injectable/injectable.dart';

const getCameraUrl = ApiPath.fetchCamerasUrl;

@Injectable(as: ICameraRepository)
class CameraRepository implements ICameraRepository {
  final IApiClient _apiClient;

  CameraRepository(this._apiClient);

  @override
  Future<BaseApiResponse<List<Camera>>> getCameras() async {
    final response = await _apiClient.get<List<Camera>, Camera>(
      getCameraUrl,
      parser: (json) => Camera.fromJson(json),
    );

    return response;
  }

  @override
  Future<BaseApiResponse<List<String>>> getDistricts() async {
    final response = await _apiClient.get<List<String>, String>(
      '$getCameraUrl/detection/classes',
      // parser: (p0) => jsonDecode,
    );
    return response;
  }

  @override
  Future<BaseApiResponse<List<String>>> getVehicles() async {
    final response = await _apiClient.get<List<String>, String>(
      '$getCameraUrl/detection/classes',
      parser: (json) => json.toString(),
    );
    print('response: ${response.data}');
    return response;
  }

  @override
  Future<BaseApiResponse<List<Camera>?>> searchCameras(String name) async {
    final response = await _apiClient.get<List<Camera>, Camera>(
      '$getCameraUrl/search/$name',
      parser: (json) => Camera.fromJson(json),
    );

    return response;
  }
}
