import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/enum/screen.dart';
import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/presentation/app/blocs/authentication/authentication_bloc.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/menu/menu_item.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Menu extends StatelessWidget {
  final Function(int)? onItemSelected;

  const Menu({super.key, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);
    final authBloc = getIt.get<AuthenticationBloc>();

    void onSignOut() {
      authBloc.add(SignOutEvent());
    }

    return Drawer(
      width: AppSpacing.rem3375.w,
      backgroundColor: appColor.menuBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppBorderRadius.spacing2xl),
          bottomRight: Radius.circular(AppBorderRadius.spacing2xl),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacing.rem700.h,
        ),
        child: Column(
          spacing: AppSpacing.rem700.h,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.rem700.h),
              child: CommonImage(
                imagePath: Assets.png.logo.path,
              ),
            ),
            MenuItem(
              title: tr('Common.home'),
              prefixIcon: Assets.svg.homeIcon,
              navigateRoute: ScreenPath.home.value,
              isActive: DextraRouter.getCurrentLocation() ==
                      ScreenPath.home.value ||
                  DextraRouter.getCurrentLocation() == ScreenPath.user.value,
            ),
            MenuItem(
              title: tr('Common.statistic'),
              prefixIcon: Assets.svg.statisticIcon,
              navigateRoute: ScreenPath.statistic.value,
              isActive: DextraRouter.getCurrentLocation() ==
                  ScreenPath.statistic.value,
            ),
            MenuItem(
              title: tr('Common.map_and_cam'),
              prefixIcon: Assets.svg.cameraIcon,
              navigateRoute: ScreenPath.mapCam.value,
              isActive:
                  DextraRouter.getCurrentLocation() == ScreenPath.mapCam.value,
            ),
            MenuItem(
              title: tr('Common.configuration'),
              prefixIcon: Assets.svg.configurationIcon,
              navigateRoute: ScreenPath.configuration.value,
              isActive: DextraRouter.getCurrentLocation() ==
                  ScreenPath.configuration.value,
            ),
            MenuItem(
              title: tr('Common.sign_out'),
              prefixIcon: Assets.svg.signOutIcon,
              onTap: onSignOut,
            ),
          ],
        ),
      ),
    );
  }
}
