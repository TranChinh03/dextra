import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/app/app_bloc.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
late GoRouter router;

class AppRouter {
  AppRouter();

  final _appBloc = getIt.get<AppBloc>();

  static String get currentLocation {
    final lastMatch = router.routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  GoRouter get appRouter {
    router = GoRouter(
      initialLocation: _getInitialLocation(),
      navigatorKey: rootNavigatorKey,
      routes: [...DextraRouter.routes],
      // initialExtra: _authenticationBloc.state.authenticationState?.extra,
    );

    // _authenticationBloc.add(
    //   UpdateAuthenticationStateEvent(
    //     authenticationState: null,
    //     redirectPath: null,
    //   ),
    // );

    return router;
  }

  String? _getInitialLocation() {
    // final authenticationState = _authenticationBloc.state;
    // if (authenticationState.redirectPath != null) {
    //   return authenticationState.redirectPath;
    // }

    return _appBloc.state.initialRouterLocation;
  }
}
