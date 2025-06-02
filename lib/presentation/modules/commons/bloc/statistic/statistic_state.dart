part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult resultByDate;
  final StatisticResult resultByCustom;
  final StatisticResult resultByDistrict;
  final ApiStatus apiStatus;

  StatisticState({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    this.apiStatus = ApiStatus.idle,
  })  : resultByDate = resultByDate ?? StatisticResult(),
        resultByCustom = resultByCustom ?? StatisticResult(),
        resultByDistrict = resultByDistrict ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    ApiStatus? apiStatus,
  }) {
    return StatisticState(
      resultByDate: resultByDate ?? this.resultByDate,
      resultByCustom: resultByCustom ?? this.resultByCustom,
      resultByDistrict: resultByDistrict ?? this.resultByDistrict,
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
