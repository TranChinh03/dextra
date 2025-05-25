import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_cameras_handler.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchCamerasHandler _searchCamerasHandler;
  SearchBloc(this._searchCamerasHandler) : super(const SearchState()) {
    on<SearchCamerasEvent>(_onSearchCameras);
  }

  Future<void> _onSearchCameras(
    SearchCamerasEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _searchCamerasHandler.handle(Query(query: event.query));

    if (response == null || response.isEmpty) {
      emit(state.copyWith(apiStatus: ApiStatus.error, resultsCam: []));
      return;
    }
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultsCam: response,
      ),
    );
  }
}
