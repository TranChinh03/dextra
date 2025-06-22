part of 'statistic_bloc.dart';

sealed class StatisticEvent {}

class SearchInitialized extends StatisticEvent {}

class DetectByDateEvent extends StatisticEvent {
  final DetectByDateQuery query;

  DetectByDateEvent({required this.query});
}

class DetectByCustomEvent extends StatisticEvent {
  final DetectByCustomQuery query;

  DetectByCustomEvent({required this.query});
}

class DetectByDistrictEvent extends StatisticEvent {
  final DetectByDistrictQuery query;

  DetectByDistrictEvent({required this.query});
}

class DetectByCameraEvent extends StatisticEvent {
  final DetectByCameraQuery query;

  DetectByCameraEvent({required this.query});
}

class DetectByCameraCustomEvent extends StatisticEvent {
  final DetectByCameraCustomQuery query;

  DetectByCameraCustomEvent({required this.query});
}

class TrackingByDateEvent extends StatisticEvent {}

class FetchSchedulesEvent extends StatisticEvent {
  final String email;

  FetchSchedulesEvent({required this.email});
}

class SendEmailByDateEvent extends StatisticEvent {
  final SendEmailByDateQuery query;

  SendEmailByDateEvent({required this.query});
}

class CancelScheduleEvent extends StatisticEvent {
  final String scheduleId;

  CancelScheduleEvent({required this.scheduleId});
}
