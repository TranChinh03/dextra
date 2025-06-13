import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heat_map_in_day/fetch_heatmap_in_day_query.dart';
import 'package:dextra/domain/usecases/heatmap/queries/fetch_heatmap/fetch_heatmap_query.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/heatmap/heatmap_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/cameraList/search_camera_list_widget.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/animated_heatmap.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/heatmap.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/time_validators.dart';
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
  final _heatmapBloc = getIt.get<HeatmapBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();

  final ScrollController _scrollController2 = ScrollController();

  final _cameraBloc = getIt.get<CameraBloc>();
  late Timer _timer;
  String _currentTime = '';
  int currentPage = 1;
  int currentSegment = 1;
  String currentDistrict = tr('Common.all_district');
  int pagesPerSeg = 5;
  LatLng? _currentPos = LatLng(10.80498476893258, 106.75270736217499);
  Camera? _selectedCam;

  final _formKeyHeatmap = GlobalKey<FormState>();

  String? _selectedDayHeatmap;
  String? _startTimeHeatmap;
  String? _endTimeHeatmap;
  String? _selectedVehicle;

  @override
  void initState() {
    super.initState();
    onFetchInitialVale();
    // _onFetchHeatmapInDay("2025-06-05", "00:00:00", "23:00:00");

    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
  }

  onFetchInitialVale() {
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchTimestampEvent());
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchDateEvent());
    if (_cameraBloc.state.vehicles.isNotEmpty) return;
    _cameraBloc.add(FetchVehiclesEvent());
    if (_cameraBloc.state.cameras.isNotEmpty) return;
    _cameraBloc.add(FetchCamerasEvent());
    if (_cameraBloc.state.districts.isNotEmpty) return;
    _cameraBloc.add(FetchDistrictsEvent());
  }

  void _onFetchHeatmap(String date) {
    _heatmapBloc.add(FetchHeatmapEvent(query: FetchHeatmapQuery(date: date)));
  }

  void _onFetchHeatmapInDay(String date, String timeFrom, String timeTo) {
    _heatmapBloc.add(FetchHeatmapInDayEvent(
        query: FetchHeatmapInDayQuery(
            date: date, timeFrom: timeFrom, timeTo: timeTo)));
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

  void _onDateHmChange(String? value) {
    setState(() {
      _selectedDayHeatmap = value;
      _startTimeHeatmap = null;
      _endTimeHeatmap = null;
    });
    _onFetchHeatmap(_selectedDayHeatmap ?? "");
  }

  void _submitFormHeatmap() {
    if (_startTimeHeatmap == null || _endTimeHeatmap == null) {
      _heatmapBloc.add(FetchHeatmapEvent(
        query: FetchHeatmapQuery(
          date: _selectedDayHeatmap ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTimeHeatmap,
          timeTo: _endTimeHeatmap,
        ),
      ));
      return;
    }
    if (_formKeyHeatmap.currentState!.validate()) {
      _heatmapBloc.add(FetchHeatmapEvent(
        query: FetchHeatmapQuery(
          date: _selectedDayHeatmap ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTimeHeatmap,
          timeTo: _endTimeHeatmap,
        ),
      ));
    } else {
      debugPrint('Form is not valid');
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController2.dispose();
    super.dispose();
  }

  bool isFirstFetch = false;

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

    return BlocBuilder<DateTimeBloc, DateTimeState>(
      builder: (context, dateState) {
        String latestDate = "";
        if (dateState.dates.isNotEmpty) {
          latestDate = dateState.dates.last.date;
          if (_heatmapBloc.state.resultHeatmap.date == null && !isFirstFetch) {
            isFirstFetch = true;
            _onFetchHeatmap(latestDate);
          }
        }
        return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
          return BlocBuilder<HeatmapBloc, HeatmapState>(
              builder: (context, heatmapState) {
            final hasValue = _heatmapBloc.state.resultHeatmap.date != null &&
                _datetimeBloc.state.dates.isNotEmpty &&
                _cameraBloc.state.cameras.isNotEmpty &&
                _cameraBloc.state.vehicles.isNotEmpty &&
                _datetimeBloc.state.timestamps.isNotEmpty;
            if (!hasValue) {
              return Center(child: CircularProgressIndicator());
            }
            return ScreenContainer(
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
                      // Container(
                      //   margin: EdgeInsets.only(bottom: AppSpacing.rem600.h),
                      //   height: AppSpacing.rem8975.h,
                      //   width: double.infinity,
                      //   color: colors.primaryBannerBg,
                      //   child: MapSample(
                      //     // cameraList: _cameraBloc.state.cameras,
                      //     location: _currentPos,
                      //     selectedCam: _selectedCam ??
                      //         Camera(
                      //           privateId: '',
                      //           name: tr('Common.default_cam'),
                      //           lastModified: DateTime.now(),
                      //         ),
                      //   ),
                      // ),
                      SearchCameraListWidget(
                        isCliked: updateCurrentPos,
                        scrollToTop: _scrollToTop,
                      ),
                      // CommonHeading(
                      //   heading: tr('Common.analyze_traffic'),
                      //   subheading: tr('Common.analyze_traffic_info'),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     SearchBox(
                      //       onChanged: (value) => {},
                      //     ),
                      //     CommonText(
                      //       "${tr('Common.time')}: ",
                      //       style: TextStyle(fontWeight: AppFontWeight.bold),
                      //     ),
                      //     // DateTimePicker(label: '', onPressed: () {}, isDate: true)
                      //   ],
                      // ),
                      // GridView.count(
                      //   padding:
                      //       EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                      //   crossAxisCount: 3,
                      //   crossAxisSpacing: AppSpacing.rem300.w,
                      //   mainAxisSpacing: AppSpacing.rem300.h,
                      //   shrinkWrap: true,
                      //   physics: NeverScrollableScrollPhysics(),
                      //   children: imageList,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     CommonStatisticCard(
                      //       label: tr('Common.avg_congestion_label'),
                      //       value: tr('Common.default_avg_congestion'),
                      //       info: tr('Common.peak_congestion_label') +
                      //           tr('Common.default_peak_congestion_value'),
                      //       background: colors.cardBackground2,
                      //       decoration: colors.cardDecorate2,
                      //     ),
                      //   ],
                      // ),
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: AppSpacing.rem600.h),
                          height: AppSpacing.rem8975.h,
                          width: double.infinity,
                          color: colors.primaryBannerBg,
                          child: AnimatedHeatmap()),
                      CommonHeading(
                        heading: tr('Common.heatmap_overview'),
                        subheading: tr('Common.visualize'),
                        headingStyle: TextStyle(
                            fontSize: AppFontSize.xlg,
                            fontWeight: AppFontWeight.bold,
                            color: colors.primary),
                      ),
                      Column(
                        spacing: AppSpacing.rem300.h,
                        children: [
                          Row(spacing: AppSpacing.rem300.w, children: [
                            CommonText(
                              tr('Common.date'),
                              style: TextStyle(
                                  fontSize: AppFontSize.xxxl,
                                  fontWeight: AppFontWeight.semiBold),
                            ),
                            SizedBox(
                              width: AppSpacing.rem4150.w,
                              child: SimpleDropdown(
                                  value: _selectedDayHeatmap ?? latestDate,
                                  itemsList:
                                      _datetimeBloc.state.dates.map((option) {
                                    return DropdownMenuItem<String>(
                                      value: option.date,
                                      child: Text(option.date),
                                    );
                                  }).toList(),
                                  onChanged: _onDateHmChange),
                            ),
                            SizedBox(
                              width: AppSpacing.rem4150.w,
                              child: SimpleDropdown(
                                  value: _selectedVehicle ?? tr('Common.all'),
                                  itemsList: [
                                    DropdownMenuItem<String>(
                                      value: tr('Common.all'),
                                      child: Text(tr('Common.all')),
                                    ),
                                    ..._cameraBloc.state.vehicles.map((option) {
                                      return DropdownMenuItem<String>(
                                        value: option,
                                        child: Text(option),
                                      );
                                    })
                                  ],
                                  onChanged: (value) => setState(() {
                                        _selectedVehicle = value;
                                      })),
                            ),
                          ]),
                          Form(
                            key: _formKeyHeatmap,
                            child: Row(
                              spacing: AppSpacing.rem600.w,
                              children: [
                                CommonText(
                                  tr('Common.from'),
                                  style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      fontWeight: AppFontWeight.semiBold),
                                ),
                                Expanded(
                                    child: SimpleDropdown(
                                  value: _startTimeHeatmap,
                                  itemsList: _datetimeBloc.state.timestamps
                                      .where((option) =>
                                          option.date ==
                                          (_selectedDayHeatmap ?? latestDate))
                                      .map((option) => DropdownMenuItem<String>(
                                            value: option.time,
                                            child: Text(option.time),
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _startTimeHeatmap = value;
                                    });
                                  },
                                  validator: (value) =>
                                      TimeValidators.validateStart(
                                    value,
                                    _endTimeHeatmap,
                                    tr: tr,
                                  ),
                                )),
                                CommonText(
                                  tr('Common.to'),
                                  style: TextStyle(
                                      fontSize: AppFontSize.xxl,
                                      fontWeight: AppFontWeight.semiBold),
                                ),
                                Expanded(
                                  child: SimpleDropdown(
                                    validator: (value) =>
                                        TimeValidators.validateEnd(
                                      _startTimeHeatmap,
                                      value,
                                      tr: tr,
                                    ),
                                    value: _endTimeHeatmap,
                                    itemsList: _datetimeBloc.state.timestamps
                                        .where((option) =>
                                            option.date ==
                                            (_selectedDayHeatmap ?? latestDate))
                                        .map((option) =>
                                            DropdownMenuItem<String>(
                                              value: option.time,
                                              child: Text(option.time),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _endTimeHeatmap = value;
                                      });
                                    },
                                  ),
                                ),
                                CommonPrimaryButton(
                                  text: tr('Common.ok'),
                                  onPressed: _submitFormHeatmap,
                                )
                              ],
                            ),
                          ),
                          CommonText(
                              "${tr('Common.heatmap_on')} ${_selectedDayHeatmap ?? latestDate},  ${_startTimeHeatmap ?? "00:00:00"} to ${_endTimeHeatmap ?? "24:00:00"}"),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: AppSpacing.rem600.h),
                              height: AppSpacing.rem8975.h,
                              width: double.infinity,
                              color: colors.primaryBannerBg,
                              child: TrafficHeatmap(
                                data: _heatmapBloc.state.resultHeatmap,
                                vehicle: _selectedVehicle ?? tr('Common.all'),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        });
      },
    );
  }
}
