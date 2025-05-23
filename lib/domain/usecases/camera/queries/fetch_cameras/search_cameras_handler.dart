import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCamerasHandler {
  late ICameraRepository _iCameraRepository;

  SearchCamerasHandler(ICameraRepository iCameraRepository) {
    _iCameraRepository = iCameraRepository;
  }

  Future<List<Camera>?> handle(String name) async {
    final response = await _iCameraRepository.searchCameras(name);

    return response.data;
  }
}
