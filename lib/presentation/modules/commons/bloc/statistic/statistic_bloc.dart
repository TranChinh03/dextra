import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_custom/detect_by_custom_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_custom/detect_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_district/detect_by_district_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_district/detect_by_district_query.dart';
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
  StatisticBloc(this._detectByDateHandler, this._detectByCustomHandler,
      this._detectByDistrictHandler)
      : super(StatisticState()) {
    on<DetectByDateEvent>(_onDetectByDate);
    on<DetectByCustomEvent>(_onDetectByCustom);
    on<DetectByDistrictEvent>(_onDetectByDistrict);
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
}
