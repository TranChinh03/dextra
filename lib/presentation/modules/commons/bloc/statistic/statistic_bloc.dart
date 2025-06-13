import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date.dart/send_email_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date.dart/send_email_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_querry.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/tracking_by_date/tracking_by_date_handler.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'statistic_event.dart';
part 'statistic_state.dart';

@singleton
class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  final DetectByDateHandler _detectByDateHandler;
  final DetectByCustomHandler _detectByCustomHandler;
  final DetectByDistrictHandler _detectByDistrictHandler;
  final DetectByCameraHandler _detectByCameraHandler;
  final TrackingByDateHandler _trackingByDateHandler;
  final SendEmailByDateHandler _sendEmailByDateHandler;
  StatisticBloc(
      this._detectByDateHandler,
      this._detectByCustomHandler,
      this._detectByDistrictHandler,
      this._detectByCameraHandler,
      this._trackingByDateHandler,
      this._sendEmailByDateHandler)
      : super(StatisticState()) {
    on<DetectByDateEvent>(_onDetectByDate);
    on<DetectByCustomEvent>(_onDetectByCustom);
    on<DetectByDistrictEvent>(_onDetectByDistrict);
    on<DetectByCameratEvent>(_onDetectByCamera);
    on<TrackingByDateEvent>(_onTrackingByDate);
    on<SendEmailByDateEvent>(_onSendEmailByDate);
  }

  Future<void> _onDetectByDate(
    DetectByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByDateHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByDate: response,
      ),
    );
  }

  Future<void> _onDetectByCustom(
    DetectByCustomEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByCustomHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByCustom: response,
      ),
    );
  }

  Future<void> _onDetectByDistrict(
    DetectByDistrictEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByDistrictHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByDistrict: response,
      ),
    );
  }

  Future<void> _onDetectByCamera(
    DetectByCameratEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByCameraHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByCamera: response,
      ),
    );
  }

  Future<void> _onTrackingByDate(
    TrackingByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _trackingByDateHandler.handle();
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        trackingByDate: response,
      ),
    );
  }

  Future<void> _onSendEmailByDate(
    SendEmailByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(sendEmailStatus: ApiStatus.loading));

    final response =
        await _sendEmailByDateHandler.handle(Query(query: event.query));

    if (response) {
      emit(
        state.copyWith(
          sendEmailStatus: ApiStatus.hasData,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        sendEmailStatus: ApiStatus.error,
      ),
    );
  }
}
