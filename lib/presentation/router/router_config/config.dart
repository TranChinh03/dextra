part of 'router.dart';

class Config {
  static const _prefixPath = '/dextra';

  static const _authPage = '/auth';

  static const _userPage = '$_prefixPath/user';
  static const _homeWidget = 'home';
  static const _mapCamWidget = 'map-cam';
  static const _statisticWidget = 'statistic';
  static const _configurationWidget = 'configuration';

  static final routes = <RouteBase>[
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: _authPage,
      builder: (_, state) {
        return AuthScreen();
      },
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: _userPage,
      builder: (_, state) {
        return UserMasterPage(
          child: HomeWidget(), // deafult child
        );
      },
      routes: <RouteBase>[
        ShellRoute(
          navigatorKey: shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return UserMasterPage(child: child);
          },
          routes: <RouteBase>[
            GoRoute(
              path: _homeWidget,
              builder: (_, state) {
                return HomeWidget();
              },
            ),
            GoRoute(
              path: _mapCamWidget,
              builder: (_, state) {
                return MapCamWidget();
              },
            ),
            GoRoute(
              path: _statisticWidget,
              builder: (_, state) {
                return StatisticWidget();
              },
            ),
            GoRoute(
              path: _configurationWidget,
              builder: (_, state) {
                return ConfigurationWidget();
              },
            ),
          ],
        ),
      ],
    ),
  ];
}
