part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult resultByDate;
  final StatisticResult resultByCustom;
  final ApiStatus apiStatus;

  StatisticState({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    this.apiStatus = ApiStatus.idle,
  })  : resultByDate = resultByDate ?? StatisticResult(),
        resultByCustom = resultByCustom ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    ApiStatus? apiStatus,
  }) {
    return StatisticState(
      resultByDate: resultByDate ?? this.resultByDate,
      resultByCustom: resultByCustom ?? this.resultByCustom,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultByDate,
        resultByCustom,
        apiStatus,
      ];
}
