import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchVehiclesHandler {
  late ICameraRepository _iCameraRepository;

  FetchVehiclesHandler(ICameraRepository iCameraRepository) {
    _iCameraRepository = iCameraRepository;
  }

  Future<List<String>?> handle() async {
    final response = await _iCameraRepository.getVehicles();

    return response.data;
  }
}
