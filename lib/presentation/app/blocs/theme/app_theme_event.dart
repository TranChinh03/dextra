part of 'app_theme_bloc.dart';

sealed class AppThemeEvent {}

class ChangeAppTheme extends AppThemeEvent {
  ChangeAppTheme({required this.themeMode});

  final ThemeMode themeMode;
}
