import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppSpacing.rem1200.h, horizontal: AppSpacing.rem1400.w),
      color: colors.backgroundApp,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonImage(
                imagePath: Assets.png.footerLogo.path,
                width: AppSpacing.rem2775.w,
              ),
              SizedBox(
                width: AppSpacing.rem6250.w,
                child: CommonText(
                  "Smart Traffic Analytics: Real-time traffic monitoring and analysis powered by AI. Enhancing urban mobility with data-driven insights",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    "Contact",
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        color: colors.buttonPrimaryBackground,
                        fontSize: AppFontSize.xxxl),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.mailIcon,
                        fit: BoxFit.scaleDown,
                      ),
                      CommonText("daylaemail@gmail.com")
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: AppSpacing.rem650.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSpacing.rem1000.w,
            children: [
              InkWell(
                onTap: () {
                  if (DextraRouter.getCurrentLocation() !=
                          ScreenPath.home.value ||
                      DextraRouter.getCurrentLocation() !=
                          ScreenPath.user.value) {
                    DextraRouter.go(ScreenPath.home.value);
                  }
                },
                child: CommonText(
                  "HOME",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      color: colors.buttonPrimaryBackground,
                      fontWeight: DextraRouter.getCurrentLocation() ==
                                  ScreenPath.home.value ||
                              DextraRouter.getCurrentLocation() ==
                                  ScreenPath.user.value
                          ? AppFontWeight.bold
                          : AppFontWeight.regular),
                ),
              ),
              InkWell(
                onTap: () => {
                  if (DextraRouter.getCurrentLocation() !=
                      ScreenPath.statistic.value)
                    {DextraRouter.go(ScreenPath.statistic.value)}
                },
                child: CommonText(
                  "STATISTIC",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      color: colors.buttonPrimaryBackground,
                      fontWeight: DextraRouter.getCurrentLocation() ==
                              ScreenPath.statistic.value
                          ? AppFontWeight.bold
                          : AppFontWeight.regular),
                ),
              ),
              InkWell(
                onTap: () => {
                  if (DextraRouter.getCurrentLocation() !=
                      ScreenPath.mapCam.value)
                    {DextraRouter.go(ScreenPath.mapCam.value)}
                },
                child: CommonText(
                  "MAP & CAMERA",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      color: colors.buttonPrimaryBackground,
                      fontWeight: DextraRouter.getCurrentLocation() ==
                              ScreenPath.mapCam.value
                          ? AppFontWeight.bold
                          : AppFontWeight.regular),
                ),
              ),
              InkWell(
                onTap: () => {
                  if (DextraRouter.getCurrentLocation() !=
                      ScreenPath.configuration.value)
                    {DextraRouter.go(ScreenPath.configuration.value)}
                },
                child: CommonText(
                  "CONFIGURATION",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      color: colors.buttonPrimaryBackground,
                      fontWeight: DextraRouter.getCurrentLocation() ==
                              ScreenPath.configuration.value
                          ? AppFontWeight.bold
                          : AppFontWeight.regular),
                ),
              ),
              // InkWell(
              //   onTap: () => {
              //     if (DextraRouter.getCurrentLocation() !=
              //         ScreenPath.statistic.value)
              //       {DextraRouter.go(ScreenPath.statistic.value)}
              //   },
              //   child: CommonText(
              //     "ABOUT US",
              //     style: TextStyle(
              //         fontSize: AppFontSize.xxxl,
              //         color: colors.buttonPrimaryBackground,
              //         fontWeight: DextraRouter.getCurrentLocation() ==
              //                 ScreenPath.statistic.value
              //             ? AppFontWeight.bold
              //             : AppFontWeight.regular),
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
