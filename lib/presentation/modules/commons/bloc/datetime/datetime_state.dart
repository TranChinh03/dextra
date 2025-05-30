part of 'datetime_bloc.dart';

@immutable
class DateTimeState extends Equatable {
  final List<Timestamp> timestamps;
  final List<Date> dates;
  final ApiStatus apiStatus;

  const DateTimeState({
    this.timestamps = const [],
    this.dates = const [],
    this.apiStatus = ApiStatus.idle,
  });
  DateTimeState copyWith({
    List<Timestamp>? timestamps,
    List<Date>? dates,
    ApiStatus? apiStatus,
  }) {
    return DateTimeState(
      timestamps: timestamps ?? this.timestamps,
      dates: dates ?? this.dates,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        timestamps,
        dates,
        apiStatus,
      ];
}
