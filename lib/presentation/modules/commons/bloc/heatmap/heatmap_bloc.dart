import 'package:dextra/domain/entities/heatmap_result.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_handler.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_query.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date.dart/send_email_by_date_query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_handler.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_querry.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
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
