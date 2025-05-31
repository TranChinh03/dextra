import 'dart:typed_data';

import 'package:dextra/domain/interfaces/interface_detection_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetectStreamlineHandler {
  late IDetectionRepository _iDetectionRepository;

  DetectStreamlineHandler(IDetectionRepository iCameraRepository) {
    _iDetectionRepository = iCameraRepository;
  }

  Future<Uint8List?> getDetectionImage(XFile imageFile) async {
    final result = await _iDetectionRepository.getDetectionImage(imageFile);
    return Uint8List.fromList(result?.data as List<int>);
  }
}
