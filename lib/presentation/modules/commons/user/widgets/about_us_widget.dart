import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_back_to_to_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsWidget extends StatefulWidget {
  const AboutUsWidget({super.key});

  @override
  State<AboutUsWidget> createState() => _AboutUsWidgetState();
}

class _AboutUsWidgetState extends State<AboutUsWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return ScreenContainer(
        child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                    controller: _scrollController,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.rem600.w,
                      vertical: AppSpacing.rem600.h,
                    ),
                    child: Column(spacing: AppSpacing.rem1000.h, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: AppSpacing.rem6250.h,
                            child: ClipRect(
                              child: Align(
                                alignment: Alignment.center,
                                heightFactor: 0.45,
                                child: CommonImage(
                                  width: double.infinity,
                                  imagePath: Assets.png.homeSec1.path,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: AppSpacing.rem6250.h,
                            color: Colors.black.withValues(alpha: 0.5),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CommonText(
                              tr('About.about_us'),
                              style: TextStyle(
                                  fontSize: AppFontSize.xlg,
                                  fontWeight: AppFontWeight.bold,
                                  color: colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonImage(
                            width: AppSpacing.rem5000.w,
                            imagePath: Assets.png.logo_2.path,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: AppSpacing.rem6250.w,
                            child: CommonText.rich(
                              TextSpan(
                                text: tr('About.about_dextra'),
                                style: TextStyle(
                                  fontSize: AppFontSize.xxl,
                                  fontWeight: AppFontWeight.regular,
                                  color: colors.textPrimary,
                                ),
                                children: [
                                  TextSpan(
                                    text: tr('About.about_dextra_2'),
                                    style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      fontWeight: AppFontWeight.bold,
                                      color: colors.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: tr('About.by_leveraging'),
                                    style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      fontWeight: AppFontWeight.regular,
                                      color: colors.textPrimary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: tr('About.about_dextra_3'),
                                    style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      fontWeight: AppFontWeight.bold,
                                      color: colors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              align: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CommonText(
                                  tr('About.our_mission'),
                                  style: TextStyle(
                                    fontSize: AppFontSize.lg,
                                    fontWeight: AppFontWeight.bold,
                                    color: colors.textPrimary,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: AppSpacing.rem250.h,
                                  ),
                                  width: AppSpacing.rem6250.w,
                                  child: CommonText.rich(
                                    TextSpan(
                                      text: "${tr('Common.to')} ",
                                      style: TextStyle(
                                        fontSize: AppFontSize.xxl,
                                        fontWeight: AppFontWeight.regular,
                                        color: colors.textPrimary,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: tr('About.our_mission_1'),
                                          style: TextStyle(
                                            fontSize: AppFontSize.xxl,
                                            fontWeight: AppFontWeight.bold,
                                            color: colors.primary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: tr('About.by_leveraging'),
                                          style: TextStyle(
                                            fontSize: AppFontSize.xxl,
                                            fontWeight: AppFontWeight.regular,
                                            color: colors.textPrimary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: tr('About.our_mission_2'),
                                          style: TextStyle(
                                            fontSize: AppFontSize.xxl,
                                            fontWeight: AppFontWeight.bold,
                                            color: colors.primary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: tr('About.our_mission_3'),
                                          style: TextStyle(
                                            fontSize: AppFontSize.xxl,
                                            fontWeight: AppFontWeight.regular,
                                            color: colors.textPrimary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: tr('About.our_mission_4'),
                                          style: TextStyle(
                                            fontSize: AppFontSize.xxl,
                                            fontWeight: AppFontWeight.bold,
                                            color: colors.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    align: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CameraImgItem(isSaved: false),
                                SizedBox(
                                  width: AppSpacing.rem3375.w,
                                ),
                                // SizedBox(
                                //     height: AppSpacing.rem5000.h,
                                //     width: AppSpacing.rem6250.w,
                                //     child: PieChartSample2()),
                              ],
                            )
                          ]),
                      CommonHeading(
                        heading: tr('About.key_features'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonImage(
                            width: AppSpacing.rem2775.w,
                            imagePath: Assets.png.feature1.path,
                            fit: BoxFit.cover,
                          ),
                          CommonImage(
                            width: AppSpacing.rem2775.w,
                            imagePath: Assets.png.feature2.path,
                            fit: BoxFit.cover,
                          ),
                          CommonImage(
                            width: AppSpacing.rem2775.w,
                            imagePath: Assets.png.feature3.path,
                            fit: BoxFit.cover,
                          ),
                          CommonImage(
                            width: AppSpacing.rem2775.w,
                            imagePath: Assets.png.feature4.path,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )
                    ])),
                Positioned(
                    bottom: AppSpacing.rem800.h,
                    right: AppSpacing.rem800.h,
                    child: CommonBackToToButton(
                        scrollController: _scrollController))
              ],
            )));
  }
}
