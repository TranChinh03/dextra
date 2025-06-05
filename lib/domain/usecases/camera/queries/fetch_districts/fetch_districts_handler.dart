import 'package:dextra/domain/interfaces/interface_camera_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchDistrictsHandler {
  late ICameraRepository _iCameraRepository;

  FetchDistrictsHandler(ICameraRepository iCameraRepository) {
    _iCameraRepository = iCameraRepository;
  }

  Future<List<String>?> handle() async {
    final response = await _iCameraRepository.getDistricts();

    return response.data;
  }
}
