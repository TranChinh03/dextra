part of 'app_bloc.dart';

sealed class AppEvent {}

class AppInitialized extends AppEvent {}

class ChangeAppLocale extends AppEvent {
  final String locale;
  ChangeAppLocale({required this.locale});
}

class InitRouterLocationEvent extends AppEvent {
  final String routerLocation;
  InitRouterLocationEvent({required this.routerLocation});
}
