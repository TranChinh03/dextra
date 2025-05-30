import 'package:dextra/domain/entities/date.dart';
import 'package:dextra/domain/entities/timestamp.dart';
import 'package:dextra/domain/usecases/statistic/queries/fecth_timestamp/fetch_timestamp_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/fetch_date/fetch_date_handler.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'datetime_event.dart';
part 'datetime_state.dart';

@singleton
class DateTimeBloc extends Bloc<DateTimeEvent, DateTimeState> {
  final FetchTimestampHandler _fetchTimestampHandler;
  final FetchDateHandler _fetchDateHandler;
  DateTimeBloc(this._fetchTimestampHandler, this._fetchDateHandler)
      : super(const DateTimeState()) {
    on<DateTimeInitialized>(_onDateTimeInitialized);
    on<FetchTimestampEvent>(_onFetchTimestamp);
    on<FetchDateEvent>(_onFetchDate);
  }

  void _onDateTimeInitialized(
    DateTimeInitialized event,
    Emitter<DateTimeState> emit,
  ) {
    emit(const DateTimeState());
  }

  Future<void> _onFetchTimestamp(
    FetchTimestampEvent event,
    Emitter<DateTimeState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchTimestampHandler.handle();

    if (response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        timestamps: response,
      ),
    );
  }

  Future<void> _onFetchDate(
    FetchDateEvent event,
    Emitter<DateTimeState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchDateHandler.handle();

    if (response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        dates: response,
      ),
    );
  }
}
