import 'dart:typed_data';

import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:image_picker/image_picker.dart';

abstract class IDetectionRepository {
  Future<BaseApiResponse<ImageDetectResult?>?> getDetectionDetails(
      XFile imageFile);
  Future<BaseApiResponse<List<int?>?>?> getDetectionImage(XFile imageFile);
}
