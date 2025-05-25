part of 'search_bloc.dart';

@immutable
class SearchState extends Equatable {
  final List<Camera> resultsCam;
  final ApiStatus apiStatus;

  const SearchState({
    this.resultsCam = const [],
    this.apiStatus = ApiStatus.idle,
  });

  SearchState copyWith({
    List<Camera>? resultsCam,
    ApiStatus? apiStatus,
  }) {
    return SearchState(
      resultsCam: resultsCam ?? this.resultsCam,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [
        resultsCam,
        apiStatus,
      ];
}
