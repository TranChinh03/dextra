part of 'heatmap_bloc.dart';

@immutable
class HeatmapState extends Equatable {
  final StatisticResult resultHeatmap;
  final HeatmapResult resultHeatmapInDay;
  final ApiStatus apiStatus;

  HeatmapState({
    StatisticResult? resultHeatmap,
    HeatmapResult? resultHeatmapInDay,
    this.apiStatus = ApiStatus.idle,
  })  : resultHeatmap = resultHeatmap ?? StatisticResult(),
        resultHeatmapInDay = resultHeatmapInDay ?? HeatmapResult();

  HeatmapState copyWith({
    StatisticResult? resultHeatmap,
    HeatmapResult? resultHeatmapInDay,
    ApiStatus? apiStatus,
  }) {
    return HeatmapState(
      resultHeatmap: resultHeatmap ?? this.resultHeatmap,
      resultHeatmapInDay: resultHeatmapInDay ?? this.resultHeatmapInDay,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultHeatmap,
        resultHeatmapInDay,
        apiStatus,
      ];
}
