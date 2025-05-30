part of 'datetime_bloc.dart';

sealed class DateTimeEvent {}

class DateTimeInitialized extends DateTimeEvent {}

class FetchTimestampEvent extends DateTimeEvent {}

class FetchDateEvent extends DateTimeEvent {}
