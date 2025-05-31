import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/domain/interfaces/interface_detection_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetectVehicleHandler {
  late IDetectionRepository _iDetectionRepository;

  DetectVehicleHandler(IDetectionRepository iCameraRepository) {
    _iDetectionRepository = iCameraRepository;
  }

  Future<ImageDetectResult?> getDetectionDetails(XFile imageFile) async {
    final result = await _iDetectionRepository.getDetectionDetails(imageFile);
    return result?.data;
  }
}
