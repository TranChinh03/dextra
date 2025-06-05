import 'dart:typed_data';

import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/domain/interfaces/api_client.dart';
import 'package:dextra/domain/interfaces/interface_detection_repository.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/infrastructure/base_api/dio_client/api_path.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

const _detectionDetails = ApiPath.detectionDetailsUrl;
const _detectionStreamline = ApiPath.detectionStreamlineUrl;

@Injectable(as: IDetectionRepository)
class DetectionRepository implements IDetectionRepository {
  final IApiClient _apiClient;

  DetectionRepository(this._apiClient);

  @override
  Future<BaseApiResponse<ImageDetectResult?>?> getDetectionDetails(
      XFile image) async {
    // Read bytes from XFile
    Uint8List bytes = await image.readAsBytes();
    final mimeType = lookupMimeType(image.name, headerBytes: bytes);
    final mimeSplit = mimeType?.split('/');

    if (mimeSplit == null || mimeSplit.length != 2) {
      // print("❌ Invalid MIME type.");
      return null;
    }

    final multipartFile = MultipartFile.fromBytes(
      bytes,
      filename: image.name,
      contentType: MediaType(mimeSplit[0], mimeSplit[1]),
    );

    final formData = FormData.fromMap({
      "file": multipartFile,
    });

    final response =
        await _apiClient.post<ImageDetectResult, ImageDetectResult>(
      _detectionDetails,
      data: formData,
      headers: {
        "Content-Type": "multipart/form-data",
      },
      parser: ImageDetectResult.fromJson,
    );

    return response;
  }

  @override
  Future<BaseApiResponse<List<int?>?>?> getDetectionImage(XFile image) async {
    // Read bytes from XFile
    Uint8List bytes = await image.readAsBytes();
    final mimeType = lookupMimeType(image.name, headerBytes: bytes);
    final mimeSplit = mimeType?.split('/');

    if (mimeSplit == null || mimeSplit.length != 2) {
      // print("❌ Invalid MIME type.");
      return null;
    }

    final multipartFile = MultipartFile.fromBytes(
      bytes,
      filename: image.name,
      contentType: MediaType(mimeSplit[0], mimeSplit[1]),
    );

    final formData = FormData.fromMap({
      "file": multipartFile,
    });

    final response = await _apiClient.post<List<int>, int>(
      _detectionStreamline,
      data: formData,
      headers: {
        "Content-Type": "multipart/form-data",
        "Accept": "image/jpeg",
      },
    );

    final filteredResponse = BaseApiResponse<List<int>>(
      data: response.data?.whereType<int>().toList() ?? [],
      message: response.message,
    );

    return filteredResponse;
  }
}
