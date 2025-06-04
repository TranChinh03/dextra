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

class DetectByCameratEvent extends StatisticEvent {
  final DetectByCameraQuery query;

  DetectByCameratEvent({required this.query});
}

class FetchHeatmapEvent extends StatisticEvent {
  final FetchHeatmapQuery query;

  FetchHeatmapEvent({required this.query});
}

class TrackingByDateEvent extends StatisticEvent {}
