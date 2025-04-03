part of 'router.dart';

class Config {
  static const _prefixPath = '/dextra';

  static const _homePage = '$_prefixPath/home-page';
  static const _userPage = '$_prefixPath/user-page';

  static final routes = <GoRoute>[
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: _homePage,
      builder: (_, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: _userPage,
      builder: (_, state) {
        return UserMasterPage();
      },
    )
  ];
}
