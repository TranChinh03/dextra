import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:injectable/injectable.dart';

const getCameraUrl = ApiPath.fetchCamerasUrl;
const searchCameraUrl = ApiPath.searchCamerasUrl;
const getVehiclesUrl = ApiPath.fetchVihiclesUrl;
const getDistrictsUrl = ApiPath.fetchDistrictsUrl;

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
      getDistrictsUrl,
      parser: (json) => json.toString(),
    );
    return response;
  }

  @override
  Future<BaseApiResponse<List<String>>> getVehicles() async {
    final response = await _apiClient.get<List<String>, String>(
      getVehiclesUrl,
      parser: (json) =>
          json.toString()[0].toUpperCase() + json.toString().substring(1),
    );
    // print('response: ${response.data}');
    return response;
  }

  @override
  Future<BaseApiResponse<List<Camera>?>> searchCameras(Query query) async {
    final SearchCamerasQuery searchCamrasQuery = query.query;

    final response = await _apiClient.post<List<Camera>, Camera>(
      searchCameraUrl,
      parser: (json) => Camera.fromJson(json),
      data: searchCamrasQuery.toJson(),
    );

    // Filter out nulls if any
    final filteredResponse = BaseApiResponse<List<Camera>>(
      data: response.data?.whereType<Camera>().toList() ?? [],
      message: response.message,
    );

    return filteredResponse;
  }
}
