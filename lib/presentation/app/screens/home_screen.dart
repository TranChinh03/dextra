import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
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
            )
          ],
        ),
      ),
    );
  }
}
