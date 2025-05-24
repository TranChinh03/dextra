part of 'camera_bloc.dart';

@immutable
class CameraState extends Equatable {
  final List<Camera> cameras;
  final List<Camera> resultsCam;
  final List<String> districts;
  final List<String> vehicles;
  final ApiStatus apiStatus;

  const CameraState({
    this.cameras = const [],
    this.vehicles = const [],
    this.districts = const [],
    this.resultsCam = const [],
    this.apiStatus = ApiStatus.idle,
  });

  CameraState copyWith({
    List<Camera>? cameras,
    List<String>? districts,
    List<String>? vehicles,
    List<Camera>? resultsCam,
    ApiStatus? apiStatus,
  }) {
    return CameraState(
      cameras: cameras ?? this.cameras,
      districts: districts ?? this.districts,
      vehicles: vehicles ?? this.vehicles,
      resultsCam: resultsCam ?? this.resultsCam,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        cameras,
        districts,
        vehicles,
        resultsCam,
        apiStatus,
      ];
}
