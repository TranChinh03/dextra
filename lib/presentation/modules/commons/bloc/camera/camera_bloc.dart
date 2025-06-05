import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/usecases/camera/queries/fetch_cameras/fetch_cameras_handler.dart';
import 'package:dextra/domain/usecases/camera/queries/fetch_districts/fetch_districts_handler.dart';
import 'package:dextra/domain/usecases/camera/queries/fetch_vehicles/fetch_vehicles_handler.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'camera_event.dart';
part 'camera_state.dart';

@singleton
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final FetchCamerasHandler _fetchCamerasHandler;
  final FetchVehiclesHandler _fetchVehiclesHandler;
  final FetchDistrictsHandler _fetchDistrictsHandler;

  CameraBloc(this._fetchCamerasHandler, this._fetchDistrictsHandler,
      this._fetchVehiclesHandler)
      : super(const CameraState()) {
    on<CameraInitialized>(_onCameraInitialized);
    on<FetchCamerasEvent>(_onFetchCameras);
    on<FetchDistrictsEvent>(_onFetchDistricts);
    on<FetchVehiclesEvent>(_onFetchVehicles);
  }

  void _onCameraInitialized(
    CameraInitialized event,
    Emitter<CameraState> emit,
  ) {
    emit(const CameraState());
  }

  Future<void> _onFetchCameras(
    FetchCamerasEvent event,
    Emitter<CameraState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchCamerasHandler.handle();

    if (response == null || response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        cameras: response,
      ),
    );
  }

  Future<void> _onFetchVehicles(
    FetchVehiclesEvent event,
    Emitter<CameraState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchVehiclesHandler.handle();

    if (response == null || response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        vehicles: response,
      ),
    );
  }

  Future<void> _onFetchDistricts(
    FetchDistrictsEvent event,
    Emitter<CameraState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchDistrictsHandler.handle();

    if (response == null || response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        districts: response,
      ),
    );
  }
}
