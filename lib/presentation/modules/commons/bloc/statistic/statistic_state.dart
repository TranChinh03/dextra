part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult result;
  final ApiStatus apiStatus;

  StatisticState({
    StatisticResult? result,
    this.apiStatus = ApiStatus.idle,
  }) : result = result ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? result,
    ApiStatus? apiStatus,
  }) {
    return StatisticState(
      result: result ?? this.result,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        result,
        apiStatus,
      ];
}
