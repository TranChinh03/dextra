import 'dart:async';
import 'dart:typed_data';

import 'package:dextra/domain/entities/image_detect_result.dart';
import 'package:dextra/domain/usecases/detection/queries/detect_streamline/detect_streamline_handler.dart';
import 'package:dextra/domain/usecases/detection/queries/detect_vehicle/detect_vehicle_handler.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'detection_event.dart';
part 'detection_state.dart';

@injectable
class DetectionBloc extends Bloc<DetectionEvent, DetectionState> {
  final DetectVehicleHandler _detectVehicleHandler;
  final DetectStreamlineHandler _detectStreamlineHandler;
  DetectionBloc(
    this._detectVehicleHandler,
    this._detectStreamlineHandler,
  ) : super(const DetectionState()) {
    on<ImageDetectEvent>(_onImageDetectEvent);
  }

  FutureOr<void> _onImageDetectEvent(
      ImageDetectEvent event, Emitter<DetectionState> emit) async {
    emit(
      state.copyWith(detectionStatus: ApiStatus.loading),
    );

    final results = await Future.wait([
      getDetectionDetails(event.image),
      getDetectionImage(event.image),
    ]);
    ImageDetectResult? result = results[0] as ImageDetectResult?;
    Uint8List? detectedImage = results[1] as Uint8List?;

    // Use detectedImage if needed, otherwise remove the variable if unused.

    if (result == null || detectedImage == null) {
      emit(
        state.copyWith(
          detectionStatus: ApiStatus.error,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        detectionStatus: ApiStatus.hasData,
        detectResult: result,
        detectedImage: detectedImage,
      ),
    );
  }

  Future<ImageDetectResult?> getDetectionDetails(XFile image) async {
    final result = await _detectVehicleHandler.getDetectionDetails(image);
    return result;
  }

  Future<Uint8List?> getDetectionImage(XFile image) async {
    final result = await _detectStreamlineHandler.getDetectionImage(image);
    return result;
  }
}
