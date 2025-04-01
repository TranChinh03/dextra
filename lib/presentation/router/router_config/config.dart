part of 'router.dart';

class Config {
  static const _prefixPath = '/dextra';

  static const _homePage = '$_prefixPath/home-page';


  static final routes = <GoRoute>[
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: _homePage,
      builder: (_, state) {
        return HomeScreen();
      },
    )
  ];
}
