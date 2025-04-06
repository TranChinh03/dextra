part of 'app_bloc.dart';

@immutable
class AppState extends Equatable {
  final String locale;
  final String initialRouterLocation;

  const AppState({
    this.locale = "vn_VN",
    // this.initialRouterLocation = DextraRouter.homePage,
    this.initialRouterLocation = "${DextraRouter.userPage}/${DextraRouter.homeWidget}",
  });

  AppState copyWith({
    String? locale,
    String? initialRouterLocation,
  }) {
    return AppState(
      locale: locale ?? this.locale,
      initialRouterLocation:
          initialRouterLocation ?? this.initialRouterLocation,
    );
  }

  @override
  List<Object?> get props => [
        locale,
        initialRouterLocation,
      ];
}
