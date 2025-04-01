import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<ChangeAppLocale>(_onChangeAppLocale);
    on<InitRouterLocationEvent>(_onInitRouterLocation);
    on<AppInitialized>(_onAppInitialized);

    // Emit the initial state to clear any existing state
    add(AppInitialized());
  }

  void _onAppInitialized(
    AppInitialized event,
    Emitter<AppState> emit,
  ) {
    emit(const AppState());
  }

  void _onChangeAppLocale(ChangeAppLocale event, Emitter<AppState> emit) {
    emit(state.copyWith(locale: event.locale));
  }

  void _onInitRouterLocation(
    InitRouterLocationEvent event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(initialRouterLocation: event.routerLocation));
  }
}
