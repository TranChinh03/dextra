part of 'statistic_bloc.dart';

sealed class StatisticEvent {}

class SearchInitialized extends StatisticEvent {}

class DetectByDateEvent extends StatisticEvent {
  final DetectByDateQuery query;

  DetectByDateEvent({required this.query});
}
