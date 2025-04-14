import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/app/app_bloc.dart';
import 'package:dextra/presentation/app/blocs/authentication/authentication_bloc.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final GlobalKey<NavigatorState> internalNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'internal');
late GoRouter router;

class AppRouter {
  AppRouter();

  final _appBloc = getIt.get<AppBloc>();
  final _authenticationBloc = getIt.get<AuthenticationBloc>();

  static String get currentLocation {
    final lastMatch = router.routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  GoRouter get appRouter {
    router = GoRouter(
      errorBuilder: (context, state) => const Center(
        child: Text('Error'),
      ),
      redirect: (context, state) {
        if (FirebaseAuth.instance.currentUser == null) {
          return DextraRouter.authPage;
        }
      },
      initialLocation: _getInitialLocation(),
      navigatorKey: rootNavigatorKey,
      routes: [...DextraRouter.routes],
      initialExtra: _authenticationBloc.state.authenticationState?.extra,
    );

    return router;
  }

  String? _getInitialLocation() {
    final authenticationState = _authenticationBloc.state;
    if (authenticationState.isLoggedIn == true) {
      return DextraRouter.userPage;
    }

    return _appBloc.state.initialRouterLocation;
  }
}
