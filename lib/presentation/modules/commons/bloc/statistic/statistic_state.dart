part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult resultByDate;
  final StatisticResult resultByCustom;
  final StatisticResult resultByDistrict;
  final StatisticResult resultByCamera;
  final StatisticResult resultHeatmap;
  final List<ResultDetail> trackingByDate;
  final ApiStatus apiStatus;

  StatisticState({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    StatisticResult? resultHeatmap,
    this.trackingByDate = const [],
    this.apiStatus = ApiStatus.idle,
  })  : resultByDate = resultByDate ?? StatisticResult(),
        resultByCustom = resultByCustom ?? StatisticResult(),
        resultByDistrict = resultByDistrict ?? StatisticResult(),
        resultByCamera = resultByCamera ?? StatisticResult(),
        resultHeatmap = resultHeatmap ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    StatisticResult? resultHeatmap,
    List<ResultDetail>? trackingByDate,
    ApiStatus? apiStatus,
  }) {
    return StatisticState(
      resultByDate: resultByDate ?? this.resultByDate,
      resultByCustom: resultByCustom ?? this.resultByCustom,
      resultByDistrict: resultByDistrict ?? this.resultByDistrict,
      resultByCamera: resultByCamera ?? this.resultByCamera,
      resultHeatmap: resultHeatmap ?? this.resultHeatmap,
      trackingByDate: trackingByDate ?? this.trackingByDate,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultByDate,
        resultByCustom,
        resultByDistrict,
        resultByCamera,
        resultHeatmap,
        trackingByDate,
        apiStatus,
      ];
}
