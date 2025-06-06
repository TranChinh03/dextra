import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/cameraList/search_camera_list_widget.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/map.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCamWidget extends StatefulWidget {
  const MapCamWidget({super.key});

  @override
  State<MapCamWidget> createState() => _MapCamWidgetState();
}

class _MapCamWidgetState extends State<MapCamWidget> {
  final ScrollController _scrollController2 = ScrollController();

  final _cameraBloc = getIt.get<CameraBloc>();
  late Timer _timer;
  String _currentTime = '';
  int currentPage = 1;
  int currentSegment = 1;
  String currentDistrict = "All districts";
  int pagesPerSeg = 5;
  LatLng? _currentPos = LatLng(10.80498476893258, 106.75270736217499);
  Camera? _selectedCam;

  @override
  void initState() {
    super.initState();
    _onFetchCamera();
    _onFetchDistrict();

    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
  }

  void _onFetchCamera() {
    if (_cameraBloc.state.cameras.isNotEmpty) return;

    _cameraBloc.add(FetchCamerasEvent());
  }

  void _onFetchDistrict() {
    if (_cameraBloc.state.districts.isNotEmpty) return;
    _cameraBloc.add(FetchDistrictsEvent());
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatted = DateFormat('dd MMMM yyyy hh:mm:ss a').format(now);
    setState(() {
      _currentTime = formatted;
    });
  }

  void updateCurrentPos(LatLng newPos, Camera? selectedCam) {
    // print("updateCurrentPos: $newPos");
    setState(() {
      _currentPos = newPos;
      _selectedCam = selectedCam;
    });
  }

  void _scrollToTop() {
    // print("Scrolling to top");
    _scrollController2.animateTo(
      0.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);
    List<Widget> imageList = List.generate(
      9,
      (_) => InkWell(
        onTap: () =>
            showDialog(context: context, builder: (context) => ImageDialog()),
        child: CommonImage(
          imagePath: Assets.png.placeHolder.path,
          width: AppSpacing.rem600.w,
        ),
      ),
    );

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        return ScreenContainer(
          isShowLoading: state.apiStatus == ApiStatus.loading,
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              controller: _scrollController2,
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.rem600.w,
                vertical: AppSpacing.rem600.h,
              ),
              child: Column(
                children: [
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
                            borderRadius: BorderRadius.circular(
                                AppBorderRadius.spacing3xl)),
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
                  Container(
                    margin: EdgeInsets.only(bottom: AppSpacing.rem600.h),
                    height: AppSpacing.rem8975.h,
                    width: double.infinity,
                    color: colors.primaryBannerBg,
                    child: MapSample(
                      // cameraList: _cameraBloc.state.cameras,
                      location: _currentPos,
                      selectedCam: _selectedCam ??
                          Camera(
                            privateId: '',
                            name: 'Default Camera',
                            lastModified: DateTime.now(),
                          ),
                    ),
                  ),
                  SearchCameraListWidget(
                    isCliked: updateCurrentPos,
                    scrollToTop: _scrollToTop,
                  ),
                  CommonHeading(
                    heading: "Analyze Traffic",
                    subheading:
                        "Gain deeper insights into traffic flow patterns through visualized results, detection snapshots, and vehicle density analysis across surveillance points",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchBox(
                        onChanged: (value) => {},
                      ),
                      CommonText(
                        "Time: ",
                        style: TextStyle(fontWeight: AppFontWeight.bold),
                      ),
                      // DateTimePicker(label: '', onPressed: () {}, isDate: true)
                    ],
                  ),
                  GridView.count(
                    padding:
                        EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
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
                      CommonStatisticCard(
                        label: tr('Common.avg_congestion_label'),
                        value: tr('Common.default_avg_congestion'),
                        info: tr('Common.peak_congestion_label') +
                            tr('Common.default_peak_congestion_value'),
                        background: colors.cardBackground2,
                        decoration: colors.cardDecorate2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
