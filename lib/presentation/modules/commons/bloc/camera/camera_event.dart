part of 'camera_bloc.dart';

sealed class CameraEvent {}

class CameraInitialized extends CameraEvent {}

class FetchCamerasEvent extends CameraEvent {}
