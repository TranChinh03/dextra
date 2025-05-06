import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return ScreenContainer(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.rem600.w,
            vertical: AppSpacing.rem600.h,
          ),
          child: Column(
            spacing: AppSpacing.rem1000.h,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacing.rem200.h,
                children: [
                  CommonText(
                    "My profile",
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.xxxl),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.rem650.h,
                        horizontal: AppSpacing.rem650.w),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: colors.dividerColor),
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.spacing4xl)),
                    child: Row(
                      spacing: AppSpacing.rem600.w,
                      children: [
                        CommonImage(
                          imagePath: Assets.png.avatar.path,
                          width: AppSpacing.rem1925.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              "Fullname",
                              style: TextStyle(
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.xl),
                            ),
                            CommonText("Position"),
                            CommonText("Location")
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                Assets.svg.editIcon,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacing.rem200.h,
                children: [
                  CommonText(
                    "Personal Information",
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.xxxl),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.rem650.h,
                        horizontal: AppSpacing.rem650.w),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: colors.dividerColor),
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.spacing4xl)),
                    child: Row(
                      spacing: AppSpacing.rem3375.w,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              "First name",
                              style: TextStyle(
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.xl),
                            ),
                            CommonText("First name"),
                            SizedBox(
                              height: AppSpacing.rem450.h,
                            ),
                            CommonText(
                              "Last name",
                              style: TextStyle(
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.xl),
                            ),
                            CommonText("Last name"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              "Email",
                              style: TextStyle(
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.xl),
                            ),
                            CommonText("email@gmail.com"),
                            SizedBox(
                              height: AppSpacing.rem450.h,
                            ),
                            CommonText(
                              "Phone",
                              style: TextStyle(
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.xl),
                            ),
                            CommonText("0123456789"),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                Assets.svg.editIcon,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CommonText(
                    "Saved Cameras",
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.xxxl),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CameraImgItem(
                          isSaved: true,
                        ),
                        CameraImgItem(
                          isSaved: true,
                        ),
                        CameraImgItem(
                          isSaved: true,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
