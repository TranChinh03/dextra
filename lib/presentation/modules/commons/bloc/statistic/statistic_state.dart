part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult resultByDate;
  final StatisticResult resultByCustom;
  final StatisticResult resultByDistrict;
  final StatisticResult resultByCamera;
  final List<ResultDetail> trackingByDate;
  final ApiStatus apiStatus;
  final ApiStatus sendEmailStatus;

  StatisticState({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    this.trackingByDate = const [],
    this.apiStatus = ApiStatus.idle,
    this.sendEmailStatus = ApiStatus.idle,
  })  : resultByDate = resultByDate ?? StatisticResult(),
        resultByCustom = resultByCustom ?? StatisticResult(),
        resultByDistrict = resultByDistrict ?? StatisticResult(),
        resultByCamera = resultByCamera ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    List<ResultDetail>? trackingByDate,
    ApiStatus? apiStatus,
    ApiStatus? sendEmailStatus,
  }) {
    return StatisticState(
      resultByDate: resultByDate ?? this.resultByDate,
      resultByCustom: resultByCustom ?? this.resultByCustom,
      resultByDistrict: resultByDistrict ?? this.resultByDistrict,
      resultByCamera: resultByCamera ?? this.resultByCamera,
      trackingByDate: trackingByDate ?? this.trackingByDate,
      apiStatus: apiStatus ?? this.apiStatus,
      sendEmailStatus: sendEmailStatus ?? this.sendEmailStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultByDate,
        resultByCustom,
        resultByDistrict,
        resultByCamera,
        trackingByDate,
        apiStatus,
        sendEmailStatus
      ];
}
