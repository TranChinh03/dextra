import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/usecases/statistic/queries/fetch_heatmap/fetch_heatmap_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_querry.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/small_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_line_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart_2.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/heatmap.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExportTab extends StatefulWidget {
  const ExportTab({super.key});

  @override
  State<ExportTab> createState() => _ExportTabState();
}

class _ExportTabState extends State<ExportTab> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyDist = GlobalKey<FormState>();
  final _formKeyHeatmap = GlobalKey<FormState>();
  final _cameraBloc = getIt.get<CameraBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();

  String? _selectedCam;
  String? _startTime;
  String? _endTime;

  String? _selectedDistrict;
  String? _startTimeDist;
  String? _endTimeDist;

  String? _selectedDate;

  String? _selectedDayHeatmap;
  String? _startTimeHeatmap;
  String? _endTimeHeatmap;
  String? _selectedVehicle;

  @override
  void initState() {
    super.initState();
    _onFetchDistrict();
    _onFetchTimestamp();
    _onFetchDate();
    _onFetchCamera();
    _onFetchVehicle();
    _onTrackingByDate();
    // _onFetchHeatmap();
  }

  void _onTrackingByDate() {
    if (_statisticBloc.state.trackingByDate.isNotEmpty) {
      return;
    }
    _statisticBloc.add(TrackingByDateEvent());
  }

  void _onFetchCamera() {
    if (_cameraBloc.state.cameras.isNotEmpty) {
      return;
    }
    _cameraBloc.add(FetchCamerasEvent());
  }

  void _onFetchDistrict() {
    if (_cameraBloc.state.districts.isNotEmpty) return;
    _cameraBloc.add(FetchDistrictsEvent());
  }

  void _onFetchVehicle() {
    if (_cameraBloc.state.vehicles.isNotEmpty) return;
    _cameraBloc.add(FetchVehiclesEvent());
  }

  void _onFetchTimestamp() {
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchTimestampEvent());
  }

  void _onFetchDate() {
    if (_datetimeBloc.state.timestamps.isNotEmpty) return;
    _datetimeBloc.add(FetchDateEvent());
  }

  void _onFetchCustom() {
    _startTime ??= _datetimeBloc.state.timestamps
        .firstWhere(
          (item) => item.date == _datetimeBloc.state.dates.last.date,
        )
        .time;
    _endTime ??= _datetimeBloc.state.timestamps.last.time;
    _statisticBloc.add(
      DetectByCustomEvent(
        query: DetectByCustomQuery(
          date: _selectedDate ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTime,
          timeTo: _endTime,
        ),
      ),
    );
  }

  void _onFetchByDist(String district, date, timeFrom, timeTo) {
    _statisticBloc.add(
      DetectByDistrictEvent(
        query: DetectByDistrictQuery(
          district: district,
          date: date,
          timeFrom: timeFrom,
          timeTo: timeTo,
        ),
      ),
    );
  }

  void _onFetchHeatmap(String date) {
    _statisticBloc.add(FetchHeatmapEvent(query: FetchHeatmapQuery(date: date)));
  }

  void _onFetchByCam() {
    _statisticBloc.add(DetectByCameratEvent(
        query: DetectByCameraQuery(
            camera: _selectedCam ?? _cameraBloc.state.cameras.last.privateId)));
  }

  void _onDateChanged(String? value) {
    if (value != null) {
      setState(() {
        _selectedDate = value;
        _startTime = _startTimeDist =
            _endTime = _endTimeDist = _datetimeBloc.state.timestamps
                .firstWhere(
                  (item) => item.date == value,
                )
                .time;
      });
      _statisticBloc.add(
          DetectByDateEvent(query: DetectByDateQuery(date: _selectedDate)));
      _statisticBloc.add(DetectByCustomEvent(
          query: DetectByCustomQuery(
              date: _selectedDate, timeFrom: _startTime, timeTo: _endTime)));
    }
  }

  void _onDateHmChange(String? value) {
    setState(() {
      _selectedDayHeatmap = value;
      _startTimeHeatmap = null;
      _endTimeHeatmap = null;
    });
    _onFetchHeatmap(_selectedDayHeatmap ?? "");
  }

  DateTime _parseTime(String timeString) {
    return DateFormat("HH:mm:ss").parse(timeString);
  }

  String? _validateStart(String? value, String? end) {
    final startTime = _parseTime(value!);
    final endTime = _parseTime(end ?? _datetimeBloc.state.timestamps.last.time);
    if (endTime.isBefore(startTime)) {
      return 'Invalid time range';
    }
    return null;
  }

  String? _validateEnd(String? start, String? value) {
    final endTime = _parseTime(value!);
    final startTime =
        _parseTime(start ?? _datetimeBloc.state.timestamps.last.time);
    if (endTime.isBefore(startTime)) {
      return 'Invalid time range';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _onFetchCustom();
    } else {
      // print('Form is not valid');
    }
  }

  void _submitFormDist(String district, date, timeFrom, timeTo) {
    // print(timeTo);
    if (_formKeyDist.currentState!.validate()) {
      _onFetchByDist(district, date, timeFrom, timeTo);
    } else {
      // print('Form is not valid');
    }
  }

  void _submitFormHeatmap() {
    if (_startTimeHeatmap == null || _endTimeHeatmap == null) {
      _statisticBloc.add(FetchHeatmapEvent(
        query: FetchHeatmapQuery(
          date: _selectedDayHeatmap ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTimeHeatmap,
          timeTo: _endTimeHeatmap,
        ),
      ));
      return;
    }
    if (_formKeyHeatmap.currentState!.validate()) {
      _statisticBloc.add(FetchHeatmapEvent(
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
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, cameraState) {
        return BlocBuilder<DateTimeBloc, DateTimeState>(
            builder: (context, dateState) {
          final hasDateData =
              dateState.dates.isNotEmpty && dateState.timestamps.isNotEmpty;
          final hasCameraData = cameraState.districts.isNotEmpty &&
              cameraState.cameras.isNotEmpty &&
              cameraState.vehicles.isNotEmpty;
          // final hasStatisticData =
          //     _statisticBloc.state.resultByDate.date != null &&
          //         _statisticBloc.state.resultByDistrict.date != null &&
          //         _statisticBloc.state.resultByCamera.date != null &&
          //         _statisticBloc.state.resultByCamera.details == null &&
          //         _statisticBloc.state.resultHeatmap.date == null;
          String latestDate = "";
          String latestTime = "";
          String firstDistrict = "";
          String firstCam = "";

          if (hasDateData && hasCameraData) {
            latestDate = dateState.dates.last.date;
            latestTime = dateState.timestamps
                .firstWhere(
                  (item) => item.date == _datetimeBloc.state.dates.last.date,
                )
                .time;
            firstDistrict = cameraState.districts.first;
            firstCam = cameraState.cameras.first.privateId ?? "";
            if (_selectedDate == null &&
                _statisticBloc.state.resultByDate.date == null) {
              //Fetch by date
              _statisticBloc.add(
                DetectByDateEvent(
                  query: DetectByDateQuery(date: latestDate),
                ),
              );
              //Fetch by District
              _onFetchByDist(firstDistrict, latestDate, latestTime, latestTime);
              _onFetchByCam();
              _onFetchHeatmap(latestDate);
            }
          }

          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            final hasStatisticData = statisticState.resultByDate.date != null &&
                statisticState.resultByDistrict.date != null &&
                statisticState.resultByCamera.details!.isNotEmpty &&
                statisticState.resultHeatmap.date != null;
            if (!hasDateData || !hasCameraData || !hasStatisticData) {
              return const Center(child: CircularProgressIndicator());
            }
            // String lastestStartTime = sampleTimestamp
            //     .firstWhere(
            //       (item) => item.date == sampleDates.last.date,
            //     )
            //     .time;
            // String lastestEndTime = sampleTimestamp.last.time;

            return Column(spacing: AppSpacing.rem1000.h, children: [
              CommonHeading(
                heading: "Overview",
                subheading: "Statistics in Ho Chi Minh City",
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              StatisticBarChart(
                  data: _statisticBloc.state.trackingByDate,
                  maxY: 500000,
                  intervalY: 50000),
              CommonHeading(
                heading: "Statistic",
                subheading: "Statistics by date",
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              Column(
                children: [
                  Row(
                    spacing: AppSpacing.rem600.w,
                    children: [
                      CommonText(
                        "Date",
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      SizedBox(
                        width: AppSpacing.rem4150.w,
                        child: SimpleDropdown(
                            value: _selectedDate ?? latestDate,
                            itemsList: _datetimeBloc.state.dates.map((option) {
                              return DropdownMenuItem<String>(
                                value: option.date,
                                child: Text(option.date),
                              );
                            }).toList(),
                            onChanged: _onDateChanged),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Total Vehicles: ",
                          style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold,
                          ),
                          children: [
                            TextSpan(
                                text: _statisticBloc
                                    .state.resultByDate.totalVehicles
                                    .toString(),
                                style: TextStyle(
                                  fontSize: AppFontSize.xxxl,
                                  color: colors.primary,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                    child: StatisticPieChart(
                      detectResult: _statisticBloc.state.resultByDate,
                      showTitle: true,
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      spacing: AppSpacing.rem600,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          "Time range",
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                            child: SimpleDropdown(
                          value: _startTime ?? latestTime,
                          itemsList: _datetimeBloc.state.timestamps
                              .where((option) =>
                                  option.date == (_selectedDate ?? latestDate))
                              .map((option) => DropdownMenuItem<String>(
                                    value: option.time,
                                    child: Text(option.time),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _startTime = value;
                            });
                          },
                          validator: (value) => _validateStart(value, _endTime),
                        )),
                        CommonText(
                          "to",
                          style: TextStyle(
                              fontSize: AppFontSize.xxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                          child: SimpleDropdown(
                            validator: (value) =>
                                _validateEnd(_startTime, value),
                            value: _endTime ?? latestTime,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ?? latestDate))
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.time,
                                      child: Text(option.time),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _endTime = value;
                              });
                            },
                          ),
                        ),
                        CommonPrimaryButton(
                          text: "OK",
                          onPressed: _submitForm,
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                      child: StatisticLineChart(
                        maxY: 20000,
                        intervalY: 2000,
                        datas: _statisticBloc.state.resultByCustom.details ??
                            _statisticBloc.state.resultByDate.details ??
                            [],
                      ),
                    ),
                    Row(children: [
                      SizedBox(
                        width: AppSpacing.rem5000.w,
                        child: CommonStatisticCard(
                          label: tr('Common.vehicles_count_label'),
                          value: _statisticBloc
                                      .state.resultByCustom.totalVehicles !=
                                  null
                              ? _statisticBloc
                                  .state.resultByCustom.totalVehicles
                                  .toString()
                              : _statisticBloc.state.resultByDate.totalVehicles
                                  .toString(),
                          info:
                              "Motorcyles: ${_statisticBloc.state.resultByCustom.numberOfMotorcycle ?? _statisticBloc.state.resultByDate.numberOfMotorcycle}",
                          textColor: colors.buttonPrimaryBackground,
                        ),
                      ),
                      Expanded(
                          child: StatisticPieChart(
                        radius: 150,
                        showTitle: false,
                        detectResult:
                            _statisticBloc.state.resultByCustom.date == null
                                ? _statisticBloc.state.resultByDate
                                : _statisticBloc.state.resultByCustom,
                      ))
                    ])
                  ],
                ),
              ),
              Divider(
                color: colors.dividerColor,
              ),
              CommonHeading(
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.rem100.h,
                  horizontal: AppSpacing.rem100.w,
                ),
                heading: "Statistis",
                subheading: "Statistics by region",
                headingStyle: TextStyle(
                    fontSize: AppFontSize.xlg,
                    fontWeight: AppFontWeight.bold,
                    color: colors.primary),
              ),
              Column(
                spacing: AppSpacing.rem600.h,
                children: [
                  Row(
                    spacing: AppSpacing.rem600.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        "Region",
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      SizedBox(
                        width: AppSpacing.rem4150.w,
                        child: SimpleDropdown(
                          value: _selectedDistrict ?? firstDistrict,
                          itemsList: _cameraBloc.state.districts.map((option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedDistrict = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: _formKeyDist,
                    child: Row(
                      spacing: AppSpacing.rem600.w,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          "Time: ${_selectedDate ?? latestDate}",
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        CommonText(
                          "Time range",
                          style: TextStyle(
                              fontSize: AppFontSize.xxxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                            child: SimpleDropdown(
                          value: _startTimeDist ?? latestTime,
                          itemsList: _datetimeBloc.state.timestamps
                              .where((option) =>
                                  option.date == (_selectedDate ?? latestDate))
                              .map((option) => DropdownMenuItem<String>(
                                    value: option.time,
                                    child: Text(option.time),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _startTimeDist = value;
                            });
                          },
                          validator: (value) =>
                              _validateStart(value, _endTimeDist),
                        )),
                        CommonText(
                          "to",
                          style: TextStyle(
                              fontSize: AppFontSize.xxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                          child: SimpleDropdown(
                            validator: (value) =>
                                _validateEnd(_startTimeDist, value),
                            value: _endTimeDist ?? latestTime,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ?? latestDate))
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.time,
                                      child: Text(option.time),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _endTimeDist = value;
                              });
                            },
                          ),
                        ),
                        CommonPrimaryButton(
                          text: "OK",
                          onPressed: () => _submitFormDist(
                              _selectedDistrict ?? firstDistrict,
                              _selectedDate ?? latestDate,
                              _startTimeDist ?? latestTime,
                              _endTimeDist ?? latestTime),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Bicycles",
                          value:
                              statisticState.resultByDistrict.numberOfBicycle,
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Motorcycles",
                          value: statisticState
                              .resultByDistrict.numberOfMotorcycle,
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Cars",
                          value: statisticState.resultByDistrict.numberOfCar
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Vans",
                          value: statisticState.resultByDistrict.numberOfVan
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Trucks",
                          value: statisticState.resultByDistrict.numberOfTruck
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Buses",
                          value: statisticState.resultByDistrict.numberOfBus
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Fire Trucks",
                          value: statisticState
                              .resultByDistrict.numberOfFireTruck
                              .toString(),
                        ),
                      ),
                      Expanded(
                        child: SmallStatisticCard(
                          title: "Containers",
                          value: statisticState
                              .resultByDistrict.numberOfContainer
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                    child: StatisticLineChart(
                      maxY: 3000,
                      intervalY: 300,
                      datas:
                          _statisticBloc.state.resultByDistrict.details ?? [],
                    ),
                  ),
                ],
              ),
              Column(children: [
                Row(
                  spacing: AppSpacing.rem600,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      "Camera",
                      style: TextStyle(
                          fontSize: AppFontSize.xxxl,
                          fontWeight: AppFontWeight.semiBold),
                    ),
                    Expanded(
                        child: SimpleDropdown(
                            value: _selectedCam ?? firstCam,
                            itemsList: _cameraBloc.state.cameras
                                .map((option) => DropdownMenuItem<String>(
                                      value: option.privateId,
                                      child: Text(option.name ?? ""),
                                    ))
                                .toList(),
                            onChanged: (value) => {
                                  setState(() {
                                    _selectedCam = value;
                                  }),
                                  _onFetchByCam()
                                })),
                  ],
                ),
                StatisticBarChart(
                  data: _statisticBloc.state.resultByCamera.details,
                  maxY: 1000,
                  intervalY: 50,
                ),
                Row(
                  children: [
                    Expanded(
                        child: StatisticPieChart2(
                      data: _statisticBloc.state.resultByCamera,
                    )),
                    CommonStatisticCard(
                      label: _selectedCam != null
                          ? _cameraBloc.state.cameras
                              .firstWhere(
                                  (item) => item.privateId == _selectedCam)
                              .name
                          : _cameraBloc.state.cameras.first.name,
                      value: _statisticBloc.state.resultByCamera.totalVehicles
                          .toString(),
                      info:
                          "Max: ${_statisticBloc.state.resultByCamera.numberOfMotorcycle} motorcycles",
                      textColor: colors.buttonPrimaryBackground,
                    )
                  ],
                ),
                CommonHeading(
                  heading: "Vehicle Heatmap Overview",
                  subheading:
                      "Visualize traffic concentration across monitored areas",
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
                        "Date",
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      SizedBox(
                        width: AppSpacing.rem4150.w,
                        child: SimpleDropdown(
                            value: _selectedDayHeatmap ?? latestDate,
                            itemsList: _datetimeBloc.state.dates.map((option) {
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
                            value: _selectedVehicle ?? "All",
                            itemsList: [
                              DropdownMenuItem<String>(
                                value: "All",
                                child: Text("All"),
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
                            "From",
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
                                _validateStart(value, _endTimeHeatmap),
                          )),
                          CommonText(
                            "to",
                            style: TextStyle(
                                fontSize: AppFontSize.xxl,
                                fontWeight: AppFontWeight.semiBold),
                          ),
                          Expanded(
                            child: SimpleDropdown(
                              validator: (value) =>
                                  _validateEnd(_startTimeHeatmap, value),
                              value: _endTimeHeatmap,
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
                                  _endTimeHeatmap = value;
                                });
                              },
                            ),
                          ),
                          CommonPrimaryButton(
                            text: "OK",
                            onPressed: _submitFormHeatmap,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                CommonText(
                    "Vehicle Heatmap on ${_selectedDayHeatmap ?? latestDate},  ${_startTimeHeatmap ?? "00:00:00"} to ${_endTimeHeatmap ?? "24:00:00"}"),
                Container(
                    margin: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                    height: AppSpacing.rem8975.h,
                    width: double.infinity,
                    color: colors.primaryBannerBg,
                    child: TrafficHeatmap(
                      data: _statisticBloc.state.resultHeatmap,
                      vehicle: _selectedVehicle ?? "All",
                    ))
              ])
            ]);
          });
        });
      },
    );
  }
}
