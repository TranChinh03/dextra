import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_arrow_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _appThemeBloc = getIt.get<AppThemeBloc>();
    final appColor = IAppColor.watch(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(color: appColor.exampleColor),
        ),
        centerTitle: true,
        backgroundColor: appColor.backgroundApp,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Home Screen!',
                style: TextStyle(color: appColor.exampleColor),
              ),
              SvgPicture.asset(
                Assets.svg.check,
                fit: BoxFit.scaleDown,
              ),
              CommonImage(
                imagePath: Assets.png.logo.path,
                width: AppSpacing.rem1000.w,
              ),
              SizedBox(height: AppSpacing.rem100.h),
              Text(
                'Welcome to the Home Screen!',
                style: TextStyle(
                  fontSize: AppFontSize.md,
                  fontWeight: AppFontWeight.bold,
                  color: appColor.exampleColor,
                ),
              ),
              SizedBox(height: AppSpacing.rem100.h),
              CommonButton(
                onPressed: () {
                  final currentTheme = _appThemeBloc.state.themeMode;
                  _appThemeBloc.add(
                    ChangeAppTheme(
                        themeMode: currentTheme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark),
                  );
                },
                // text: tr('Common.continue_title'),
                text: tr('Change theme'),
              ),
              CommonPrimaryButton(
                onPressed: () {
                  final currentTheme = _appThemeBloc.state.themeMode;
                  _appThemeBloc.add(
                    ChangeAppTheme(
                        themeMode: currentTheme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark),
                  );
                },
                text: tr('Common.view'),
              ),
              CommonSecondaryButton(
                onPressed: () {
                  final currentTheme = _appThemeBloc.state.themeMode;
                  _appThemeBloc.add(
                    ChangeAppTheme(
                        themeMode: currentTheme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark),
                  );
                },
                text: tr('Common.explore'),
              ),
              CommonArrowButton(
                onPressed: () {
                  final currentTheme = _appThemeBloc.state.themeMode;
                  _appThemeBloc.add(
                    ChangeAppTheme(
                        themeMode: currentTheme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark),
                  );
                },
              ),
              CameraImgItem(
                name: "VoChiCong - CauPhuHuu2",
                time: '09 March 2025\n10:25:30',
                onPressed: () {
                  final currentTheme = _appThemeBloc.state.themeMode;
                  _appThemeBloc.add(
                    ChangeAppTheme(
                        themeMode: currentTheme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark),
                  );
                },
                overflow: TextOverflow.ellipsis,
              ),
              CommonStatisticCard(
                label: tr('Common.vehicles_count_label'),
                value: tr('Common.default_count_value'),
                info: tr('Common.compare_yesterday_label') +
                    tr('Common.default_compare_yesterda_value'),
                textColor: appColor.buttonPrimaryBackground,
              ),
              CommonStatisticCard(
                label: tr('Common.avg_congestion_label'),
                value: tr('Common.default_avg_congestion'),
                info: tr('Common.peak_congestion_label') +
                    tr('Common.default_peak_congestion_value'),
                background: appColor.cardBackground2,
                decoration: appColor.cardDecorate2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
