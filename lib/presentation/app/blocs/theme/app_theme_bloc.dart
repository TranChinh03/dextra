import 'package:dextra/theme/color/app_color.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

@lazySingleton
class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(const AppThemeState()) {
    on<ChangeAppTheme>(_onChangeAppTheme);
  }

  void _onChangeAppTheme(ChangeAppTheme event, Emitter<AppThemeState> emit) {
    emit(state.copyWith(themeMode: event.themeMode));
  }
}
