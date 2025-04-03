import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_arrow_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.rem600.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CommonText(
                        tr('Common.home_sec_1_heading'),
                        style: TextStyle(
                            fontSize: AppFontSize.lg,
                            fontWeight: AppFontWeight.bold),
                      ),
                      SizedBox(
                        height: AppSpacing.rem250.h,
                      ),
                      CommonText(
                        tr('Common.home_sec_1_subheading'),
                        style: TextStyle(fontSize: AppFontSize.xxl),
                      ),
                      SizedBox(
                        height: AppSpacing.rem1600.h,
                      ),
                      Row(
                        children: [
                          CommonPrimaryButton(
                            text: tr('Common.explore_now'),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: AppSpacing.rem250.w,
                          ),
                          CommonArrowButton(
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: AppSpacing.rem450),
                  child: Stack(children: [
                    Column(
                      children: [
                        CommonImage(
                          width: AppSpacing.rem8975.w,
                          imagePath: Assets.png.homeSec1.path,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: AppSpacing.rem300.h,
                        )
                      ],
                    ),
                    Positioned(
                      right: AppSpacing.rem2350.w,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.spacing3xl),
                        child: CommonImage(
                          width: AppSpacing.rem2775.w,
                          imagePath: Assets.png.cam3.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: AppSpacing.rem1400.w,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.spacing3xl),
                        child: CommonImage(
                          width: AppSpacing.rem3375.w,
                          imagePath: Assets.png.cam2.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: AppSpacing.rem175.h,
                                horizontal: AppSpacing.rem400.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        AppBorderRadius.spacing3xl),
                                    topRight: Radius.circular(
                                        AppBorderRadius.spacing3xl)),
                                color: colors.backgroundApp),
                            child: CommonText(
                              tr('Common.cam_default_label'),
                              style: TextStyle(
                                  fontWeight: AppFontWeight.semiBold,
                                  fontSize: AppFontSize.sm,
                                  color: colors.buttonPrimaryBackground),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.zero,
                                topRight:
                                    Radius.circular(AppBorderRadius.spacing3xl),
                                bottomLeft:
                                    Radius.circular(AppBorderRadius.spacing3xl),
                                bottomRight: Radius.circular(
                                    AppBorderRadius.spacing3xl)),
                            child: CommonImage(
                              width: AppSpacing.rem4150.w,
                              imagePath: Assets.png.cam1.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: AppSpacing.rem500.h,
                      right: AppSpacing.rem500.w,
                      child: CommonArrowButton(
                          backgroundColor:
                              colors.backgroundApp.withValues(alpha: 0.75)),
                    )
                  ]),
                ),
              ],
            ),
            CommonHeading(
                heading: "Search for Cameras",
                subheading: "Enter camera name  to see what’s happening now!"),
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  hintText: "Search...",
                  trailing: <Widget>[
                    SvgPicture.asset(
                      Assets.svg.search,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      width: AppSpacing.rem350.w,
                    )
                  ],
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = '';
                  return ListTile(
                    title: CommonText(""),
                  );
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [CameraImgItem(), CameraImgItem(), CameraImgItem()],
              ),
            ),
            CommonPrimaryButton(text: "All Cameras")
          ],
        ),
      ),
    );
  }
}
