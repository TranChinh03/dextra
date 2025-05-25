part of 'search_bloc.dart';

sealed class SearchEvent {}

class SearchInitialized extends SearchEvent {}

class SearchCamerasEvent extends SearchEvent {
  final SearchCamerasQuery query;

  SearchCamerasEvent({required this.query});
}
