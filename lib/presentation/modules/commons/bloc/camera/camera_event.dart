part of 'camera_bloc.dart';

sealed class CameraEvent {}

class CameraInitialized extends CameraEvent {}

class FetchCamerasEvent extends CameraEvent {}

class FetchVehiclesEvent extends CameraEvent {}

class FetchDistrictsEvent extends CameraEvent {}
