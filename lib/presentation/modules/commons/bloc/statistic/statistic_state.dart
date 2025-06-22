part of 'statistic_bloc.dart';

@immutable
class StatisticState extends Equatable {
  final StatisticResult resultByDate;
  final StatisticResult resultByCustom;
  final StatisticResult resultByDistrict;
  final StatisticResult resultByCamera;
  final StatisticResult resultByCameraCustom;
  final List<ResultDetail> trackingByDate;
  final ApiStatus apiStatus;
  final ApiStatus cancelScheduleStatus;
  final ApiState sendEmailState;
  final List<ScheduleInfo> schedules;

  StatisticState({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    StatisticResult? resultByCameraCustom,
    this.schedules = const [],
    this.trackingByDate = const [],
    this.apiStatus = ApiStatus.idle,
    this.cancelScheduleStatus = ApiStatus.idle,
    this.sendEmailState = const ApiState(status: ApiStatus.idle),
  })  : resultByDate = resultByDate ?? StatisticResult(),
        resultByCustom = resultByCustom ?? StatisticResult(),
        resultByDistrict = resultByDistrict ?? StatisticResult(),
        resultByCamera = resultByCamera ?? StatisticResult(),
        resultByCameraCustom = resultByCameraCustom ?? StatisticResult();

  StatisticState copyWith({
    StatisticResult? resultByDate,
    StatisticResult? resultByCustom,
    StatisticResult? resultByDistrict,
    StatisticResult? resultByCamera,
    StatisticResult? resultByCameraCustom,
    List<ResultDetail>? trackingByDate,
    ApiStatus? apiStatus,
    ApiStatus? cancelScheduleStatus,
    ApiState? sendEmailState,
    List<ScheduleInfo>? schedules,
  }) {
    return StatisticState(
      resultByDate: resultByDate ?? this.resultByDate,
      resultByCustom: resultByCustom ?? this.resultByCustom,
      resultByDistrict: resultByDistrict ?? this.resultByDistrict,
      resultByCamera: resultByCamera ?? this.resultByCamera,
      resultByCameraCustom: resultByCameraCustom ?? this.resultByCameraCustom,
      trackingByDate: trackingByDate ?? this.trackingByDate,
      apiStatus: apiStatus ?? this.apiStatus,
      sendEmailState: sendEmailState ?? this.sendEmailState,
      schedules: schedules ?? this.schedules,
      cancelScheduleStatus: cancelScheduleStatus ?? this.cancelScheduleStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultByDate,
        resultByCustom,
        resultByDistrict,
        resultByCamera,
        resultByCameraCustom,
        trackingByDate,
        apiStatus,
        sendEmailState,
        schedules,
        cancelScheduleStatus,
      ];
}
