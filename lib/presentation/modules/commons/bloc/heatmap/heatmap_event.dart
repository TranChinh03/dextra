part of 'heatmap_bloc.dart';

sealed class HeatmapEvent {}

class HeatmapInitialized extends HeatmapEvent {}

class FetchHeatmapEvent extends HeatmapEvent {
  final FetchHeatmapQuery query;

  FetchHeatmapEvent({required this.query});
}

class FetchHeatmapInDayEvent extends HeatmapEvent {
  final FetchHeatmapInDayQuery query;

  FetchHeatmapInDayEvent({required this.query});
}
