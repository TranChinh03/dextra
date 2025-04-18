import 'package:dextra/presentation/modules/commons/auth/auth_screen.dart';
import 'package:dextra/presentation/modules/commons/user/screens/user_master_page.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configuration_screen.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/home_widget.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/map_cam_widget.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/profile_widget.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/statistic_widget.dart';
import 'package:dextra/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part 'config.dart';

class DextraRouter {
  static const prefixPath = Config._prefixPath;

  static const authPage = Config._authPage;

  static const userHomePage = "${Config._userPage}/${Config._homeWidget}";

  static const homeWidget = Config._homeWidget;
  static const mapCamWidget = Config._mapCamWidget;
  static const statisticWidget = Config._statisticWidget;
  static const configurationWidget = Config._configurationWidget;
  static const profileWidget = Config._profileWidget;
  static const userPage = Config._userPage;

  static final routes = Config.routes;

  static void push(String path, {Object? params}) =>
      router.push(path, extra: params);
  static void pushNamed(String path, {Object? params}) =>
      router.pushNamed(path, extra: params);
  static void go(String path, {Object? params}) =>
      router.go(path, extra: params);
  static void replace(String path, {Object? params}) =>
      router.replace(path, extra: params);
  static void pop() => router.pop();
  static String getCurrentLocation() =>
      router.routerDelegate.currentConfiguration.uri.toString();
}
