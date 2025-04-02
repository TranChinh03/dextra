part of 'app_theme_bloc.dart';

@immutable
class AppThemeState extends Equatable {
  final ThemeMode themeMode;
  final IAppColor appColor;

  const AppThemeState({
    this.themeMode = ThemeMode.light,
    this.appColor = const AppLightColor(),
  });

  AppThemeState copyWith({ThemeMode? themeMode}) {
    return AppThemeState(
      themeMode: themeMode ?? this.themeMode,
      appColor: themeMode == ThemeMode.dark
          ? const AppDarkColor()
          : const AppLightColor(),
    );
  }

  @override
  List<Object?> get props => [
        themeMode,
        appColor,
      ];
}
