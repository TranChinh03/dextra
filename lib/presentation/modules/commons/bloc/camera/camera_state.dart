part of 'camera_bloc.dart';

@immutable
class CameraState extends Equatable {
  final List<Camera> cameras;
  final ApiStatus apiStatus;

  const CameraState({
    this.cameras = const [],
    this.apiStatus = ApiStatus.idle,
  });

  CameraState copyWith({
    List<Camera>? cameras,
    ApiStatus? apiStatus,
  }) {
    return CameraState(
      cameras: cameras ?? this.cameras,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        cameras,
        apiStatus,
      ];
}
