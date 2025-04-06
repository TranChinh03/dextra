// Path of screens

import 'package:dextra/presentation/router/router_config/router.dart';

enum ScreenPath {
  user(DextraRouter.userPage),
  home("${DextraRouter.userPage}/${DextraRouter.homeWidget}"),
  statistic("${DextraRouter.userPage}/${DextraRouter.statisticWidget}"),
  mapCam("${DextraRouter.userPage}/${DextraRouter.mapCamWidget}"),
  configuration("${DextraRouter.userPage}/${DextraRouter.configurationWidget}"),
  ;

  final String value;
  const ScreenPath(this.value);
}