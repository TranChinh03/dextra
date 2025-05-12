import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCamerasHandler {
  late ICameraRepository _iCameraRepository;

  FetchCamerasHandler(ICameraRepository iCameraRepository) {
    _iCameraRepository = iCameraRepository;
  }

  Future<List<Camera>?> handle() async {
    final response = await _iCameraRepository.getCameras();

    return response.data;
  }
}
