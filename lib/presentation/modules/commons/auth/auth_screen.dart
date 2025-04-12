import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);
    return Scaffold(
      backgroundColor: appColor.menuBackground,
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 4, // 40% of the space
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.rem600.h,
                  horizontal: AppSpacing.rem600.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      spacing: AppSpacing.rem200.h,
                      children: [
                        CommonImage(
                          imagePath: Assets.png.logo.path,
                          width: AppSpacing.rem1925.w,
                        ),
                        CommonText(
                          tr('Auth.sub_slogan'),
                          style: TextStyle(
                            fontSize: AppFontSize.md,
                            fontWeight: AppFontWeight.regular,
                            color: appColor.white,
                          ),
                        )
                      ],
                    ),
                    CommonText(
                      tr('Auth.slogan'),
                      style: TextStyle(
                        fontSize: AppFontSize.displayMedium,
                        fontWeight: AppFontWeight.bold,
                        color: appColor.white,
                      ),
                    ),
                    CommonImage(
                      imagePath: Assets.png.authBackground.path,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6, // 60% of the space
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: appColor.backgroundApp,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppBorderRadius.spacing2xl),
                    bottomLeft: Radius.circular(AppBorderRadius.spacing2xl),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSpacing.rem1925.h,
                    horizontal: AppSpacing.rem1200.w,
                  ),
                  child: Column(
                    children: [
                      // Add widgets for the second column here
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
