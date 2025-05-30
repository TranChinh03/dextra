part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final ResultDetail result;
  final ApiStatus apiStatus;

  StatisticState({
    ResultDetail? result,
    this.apiStatus = ApiStatus.idle,
  }) : result = result ?? ResultDetail();

  StatisticState copyWith({
    ResultDetail? result,
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
