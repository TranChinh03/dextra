import 'package:dextra/presentation/app/screens/home_screen.dart';
import 'package:dextra/presentation/modules/commons/user/screens/user_master_page.dart';
import 'package:dextra/presentation/router/app_router.dart';
import 'package:go_router/go_router.dart';
part 'config.dart';

class DextraRouter {
  static const prefixPath = Config._prefixPath;
  static const homePage = Config._homePage;
  static const userPage = Config._userPage;

  static final routes = Config.routes;

  static void push(String path, {Object? params}) =>
      router.push(path, extra: params);
  static void go(String path, {Object? params}) =>
      router.go(path, extra: params);
  static void replace(String path, {Object? params}) =>
      router.replace(path, extra: params);
  static void pop() => router.pop();
}
