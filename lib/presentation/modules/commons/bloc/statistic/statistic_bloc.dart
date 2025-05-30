import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_querry.dart';
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
  StatisticBloc(this._detectByDateHandler) : super(StatisticState()) {
    on<DetectByDateEvent>(_onDetectByDate);
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
        result: response,
      ),
    );
  }
}
