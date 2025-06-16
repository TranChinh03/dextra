import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_handler.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_handler.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'heatmap_event.dart';
part 'heatmap_state.dart';

@singleton
class HeatmapBloc extends Bloc<HeatmapEvent, HeatmapState> {
  final FetchHeatmapHandler _fetchHeatmapHandler;
  final FetchHeatmapInDayHandler _fetchHeatmapInDayHandler;

  HeatmapBloc(
    this._fetchHeatmapHandler,
    this._fetchHeatmapInDayHandler,
  ) : super(HeatmapState()) {
    on<FetchHeatmapEvent>(_onFetchHeatmap);
    on<FetchHeatmapInDayEvent>(_onFetchHeatmapInDay);
  }

  Future<void> _onFetchHeatmap(
    FetchHeatmapEvent event,
    Emitter<HeatmapState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _fetchHeatmapHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultHeatmap: response,
      ),
    );
  }

  Future<void> _onFetchHeatmapInDay(
    FetchHeatmapInDayEvent event,
    Emitter<HeatmapState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _fetchHeatmapInDayHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultHeatmapInDay: response,
      ),
    );
  }
}
