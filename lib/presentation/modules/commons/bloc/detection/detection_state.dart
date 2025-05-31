part of 'detection_bloc.dart';

@immutable
class DetectionState extends Equatable {
  final ImageDetectResult? detectResult;
  final ApiStatus detectionStatus;
  final Uint8List? detectedImage;

  const DetectionState({
    this.detectResult,
    this.detectionStatus = ApiStatus.idle,
    this.detectedImage,
  });

  DetectionState copyWith({
    ImageDetectResult? detectResult,
    ApiStatus? detectionStatus,
    Uint8List? detectedImage,
  }) {
    return DetectionState(
      detectResult: detectResult ?? this.detectResult,
      detectionStatus: detectionStatus ?? this.detectionStatus,
      detectedImage: detectedImage ?? this.detectedImage,
    );
  }

  @override
  List<Object?> get props => [
        detectResult,
        detectionStatus,
        detectedImage,
      ];
}
