import 'dart:async';

import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/pie_chart_sample.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/date_time_picker.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
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

class MapCamWidget extends StatefulWidget {
  const MapCamWidget({super.key});

  @override
  State<MapCamWidget> createState() => _MapCamWidgetState();
}

class _MapCamWidgetState extends State<MapCamWidget> {
  late Timer _timer;
  String _currentTime = '';

  final List<String> _districts = [
    'District 1',
    'District 3',
    'District 4',
    'District 5',
    'District 6',
    'District 7',
    'District 8',
    'District 10',
    'District 11',
    'District 12',
    'Binh Thanh District',
    'Go Vap District',
    'Phu Nhuan District',
    'Tan Binh District',
    'Tan Phu District',
    'Thu Duc District',
    'Binh Chanh District',
    'Cu Chi District',
    'Hoc Mon District',
    'Nha Be District',
    'Can Gio District',
    'Thu Duc City',
  ];

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatted = DateFormat('dd MMMM yyyy hh:mm:ss a').format(now);
    setState(() {
      _currentTime = formatted;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    List<Widget> imageList = List.generate(
      9,
      (_) => CommonImage(
        imagePath: Assets.png.placeHolder.path,
        width: AppSpacing.rem600.w,
      ),
    );

    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.rem600.w,
              vertical: AppSpacing.rem600.h,
            ),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    height: AppSpacing.rem200.h,
                    width: AppSpacing.rem200.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.liveBadgeTextColor),
                  ),
                  SizedBox(
                    width: AppSpacing.rem300.w,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.rem125.h,
                        horizontal: AppSpacing.rem700.w),
                    decoration: BoxDecoration(
                        color: colors.liveBadgeBgColor,
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.spacing3xl)),
                    child: CommonText(
                      "Live",
                      style: TextStyle(
                          color: colors.liveBadgeTextColor,
                          fontWeight: AppFontWeight.semiBold),
                    ),
                  ),
                  SizedBox(
                    width: AppSpacing.rem400.w,
                  ),
                  CommonText(
                    _currentTime,
                    style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.xxl),
                  )
                ],
              ),
              SizedBox(
                height: AppSpacing.rem600.h,
              ),
              Row(
                children: [
                  SearchBox(),
                  SizedBox(
                    width: AppSpacing.rem300.w,
                  ),
                  Expanded(
                    child: Simpledropdown(
                      itemsList: _districts,
                      onChanged: (value) => setState(() {}),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: AppSpacing.rem600.h),
                height: AppSpacing.rem8975.h,
                width: double.infinity,
                color: colors.primaryBannerBg,
                child: CommonText("Map"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CameraImgItem(), CameraImgItem(), CameraImgItem()],
                ),
              ),
              CommonHeading(
                heading: "Analyze Traffic",
                subheading:
                    "Gain deeper insights into traffic flow patterns through visualized results, detection snapshots, and vehicle density analysis across surveillance points",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchBox(),
                  CommonText(
                    "Time: ",
                    style: TextStyle(fontWeight: AppFontWeight.bold),
                  ),
                  // DateTimePicker(label: '', onPressed: () {}, isDate: true)
                ],
              ),
              GridView.count(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                crossAxisCount: 3,
                crossAxisSpacing: AppSpacing.rem300.w,
                mainAxisSpacing: AppSpacing.rem300.h,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: imageList,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: AppSpacing.rem5000.h,
                      width: AppSpacing.rem6250.w,
                      child: PieChartSample2()),
                  CommonStatisticCard(
                    label: tr('Common.avg_congestion_label'),
                    value: tr('Common.default_avg_congestion'),
                    info: tr('Common.peak_congestion_label') +
                        tr('Common.default_peak_congestion_value'),
                    background: colors.cardBackground2,
                    decoration: colors.cardDecorate2,
                  ),
                ],
              )
            ])));
  }
}
