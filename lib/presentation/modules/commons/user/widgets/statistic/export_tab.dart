import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
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
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart_2.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_line_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart_2.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
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
  final StatisticResult mockData = StatisticResult.fromJson({
    "camera": "56de42f611f398ec0c48127d",
    "numberOfBicycle": 821,
    "numberOfMotorcycle": 5010,
    "numberOfCar": 2390,
    "numberOfVan": 171,
    "numberOfTruck": 161,
    "numberOfBus": 159,
    "numberOfFireTruck": 159,
    "numberOfContainer": 178,
    "details": [
      {
        "date": "2025-05-27",
        "numberOfBicycle": 107,
        "numberOfMotorcycle": 903,
        "numberOfCar": 357,
        "numberOfVan": 22,
        "numberOfTruck": 24,
        "numberOfBus": 31,
        "numberOfFireTruck": 16,
        "numberOfContainer": 25
      },
      {
        "date": "2025-05-28",
        "numberOfBicycle": 129,
        "numberOfMotorcycle": 640,
        "numberOfCar": 324,
        "numberOfVan": 24,
        "numberOfTruck": 27,
        "numberOfBus": 25,
        "numberOfFireTruck": 26,
        "numberOfContainer": 25
      },
      {
        "date": "2025-05-29",
        "numberOfBicycle": 135,
        "numberOfMotorcycle": 689,
        "numberOfCar": 365,
        "numberOfVan": 26,
        "numberOfTruck": 24,
        "numberOfBus": 18,
        "numberOfFireTruck": 26,
        "numberOfContainer": 28
      },
      {
        "date": "2025-05-30",
        "numberOfBicycle": 105,
        "numberOfMotorcycle": 695,
        "numberOfCar": 345,
        "numberOfVan": 22,
        "numberOfTruck": 20,
        "numberOfBus": 26,
        "numberOfFireTruck": 19,
        "numberOfContainer": 31
      },
      {
        "date": "2025-05-31",
        "numberOfBicycle": 128,
        "numberOfMotorcycle": 773,
        "numberOfCar": 356,
        "numberOfVan": 32,
        "numberOfTruck": 21,
        "numberOfBus": 19,
        "numberOfFireTruck": 28,
        "numberOfContainer": 24
      },
      {
        "date": "2025-06-01",
        "numberOfBicycle": 112,
        "numberOfMotorcycle": 661,
        "numberOfCar": 355,
        "numberOfVan": 24,
        "numberOfTruck": 26,
        "numberOfBus": 22,
        "numberOfFireTruck": 26,
        "numberOfContainer": 22
      },
      {
        "date": "2025-06-02",
        "numberOfBicycle": 105,
        "numberOfMotorcycle": 649,
        "numberOfCar": 288,
        "numberOfVan": 21,
        "numberOfTruck": 19,
        "numberOfBus": 18,
        "numberOfFireTruck": 18,
        "numberOfContainer": 23
      }
    ]
  });

  final List<ResultDetail> mockTracking = [
    {
      "date": "2025-05-27",
      "numberOfBicycle": 74886,
      "numberOfMotorcycle": 450370,
      "numberOfCar": 225212,
      "numberOfVan": 14919,
      "numberOfTruck": 14850,
      "numberOfBus": 14919,
      "numberOfFireTruck": 15018,
      "numberOfContainer": 15112
    },
    {
      "date": "2025-05-28",
      "numberOfBicycle": 75454,
      "numberOfMotorcycle": 448603,
      "numberOfCar": 224319,
      "numberOfVan": 15061,
      "numberOfTruck": 15004,
      "numberOfBus": 14988,
      "numberOfFireTruck": 15103,
      "numberOfContainer": 14805
    },
    {
      "date": "2025-05-29",
      "numberOfBicycle": 74739,
      "numberOfMotorcycle": 448218,
      "numberOfCar": 224652,
      "numberOfVan": 15118,
      "numberOfTruck": 14979,
      "numberOfBus": 14913,
      "numberOfFireTruck": 15036,
      "numberOfContainer": 14894
    },
    {
      "date": "2025-05-30",
      "numberOfBicycle": 74980,
      "numberOfMotorcycle": 452019,
      "numberOfCar": 224481,
      "numberOfVan": 15023,
      "numberOfTruck": 15110,
      "numberOfBus": 14859,
      "numberOfFireTruck": 15042,
      "numberOfContainer": 15126
    },
    {
      "date": "2025-05-31",
      "numberOfBicycle": 74757,
      "numberOfMotorcycle": 451661,
      "numberOfCar": 224681,
      "numberOfVan": 14818,
      "numberOfTruck": 15081,
      "numberOfBus": 14988,
      "numberOfFireTruck": 15125,
      "numberOfContainer": 15118
    },
    {
      "date": "2025-06-01",
      "numberOfBicycle": 74363,
      "numberOfMotorcycle": 448287,
      "numberOfCar": 225158,
      "numberOfVan": 14968,
      "numberOfTruck": 15020,
      "numberOfBus": 15014,
      "numberOfFireTruck": 15085,
      "numberOfContainer": 14945
    },
    {
      "date": "2025-06-02",
      "numberOfBicycle": 56311,
      "numberOfMotorcycle": 340211,
      "numberOfCar": 170150,
      "numberOfVan": 11323,
      "numberOfTruck": 11272,
      "numberOfBus": 11472,
      "numberOfFireTruck": 11297,
      "numberOfContainer": 11343
    }
  ].map((e) => ResultDetail.fromJson(e)).toList();
  final _formKey = GlobalKey<FormState>();
  final _formKeyDist = GlobalKey<FormState>();
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

  @override
  void initState() {
    super.initState();
    // _onFetchDistrict();
    // _onFetchTimestamp();
    // _onFetchDate();
    // _onFetchCamera();
    // _onTrackingByDate();
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

  void _onFetchByDist() {
    if (_startTimeDist == null || _endTimeDist == null) {
      _startTimeDist = _datetimeBloc.state.timestamps
          .firstWhere(
            (item) => item.date == _datetimeBloc.state.dates.last.date,
          )
          .time;
      _endTimeDist = _datetimeBloc.state.timestamps.last.time;
    }
    _statisticBloc.add(
      DetectByDistrictEvent(
        query: DetectByDistrictQuery(
          district: _selectedDistrict ?? _cameraBloc.state.districts.first,
          date: _selectedDate ?? _datetimeBloc.state.dates.last.date,
          timeFrom: _startTimeDist,
          timeTo: _endTimeDist,
        ),
      ),
    );
  }

  void _onFetchByCam(String? value) {
    setState(() {
      _selectedCam = value;
    });
    _statisticBloc.add(DetectByCameratEvent(
        query: DetectByCameraQuery(
            camera:
                _selectedCam ?? _cameraBloc.state.cameras.first.privateId)));
  }

  void _onDateChanged(String? value) {
    if (value != null) {
      setState(() {
        _selectedDate = value;
        _startTime = _datetimeBloc.state.timestamps
            .firstWhere(
              (item) => item.date == value,
            )
            .time;
        _endTime = _datetimeBloc.state.timestamps
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
      print('Form is not valid');
    }
  }

  void _submitFormDist() {
    if (_formKeyDist.currentState!.validate()) {
      _onFetchByDist();
    } else {
      print('Form is not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, cameraState) {
        return BlocBuilder<DateTimeBloc, DateTimeState>(
            builder: (context, dateState) {
          // final hasDateData =
          //     dateState.dates.isNotEmpty && dateState.timestamps.isNotEmpty;
          // final hasCameraData = cameraState.districts.isNotEmpty &&
          //     cameraState.cameras.isNotEmpty;
          // final hasStatisticData =
          //     _statisticBloc.state.resultByDate.date != null &&
          //         _statisticBloc.state.resultByDistrict.date != null &&
          //         _statisticBloc.state.resultByCamera.date != null &&statisticState.resultByCamera.details == null;

          // if (hasDateData && hasCameraData && !hasStatisticData) {
          //   _statisticBloc.add(
          //     DetectByDateEvent(
          //       query: DetectByDateQuery(date: dateState.dates.last.date),
          //     ),
          //   );
          //   _onFetchByDist();
          // _statisticBloc.add(DetectByCameratEvent(
          //       query: DetectByCameraQuery(
          //           camera: _cameraBloc.state.cameras.last.privateId)));

          // }

          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            // if (!hasDateData ||
            //     !hasCameraData ||
            //     statisticState.resultByDate.date == null ||
            //     statisticState.resultByDistrict.date == null) {
            //   return const Center(child: CircularProgressIndicator());
            // }

            return Column(spacing: AppSpacing.rem1000.h, children: [
              // StatisticBarChart2(
              //   data: mockTracking,
              //   maxY: 1000000,
              // ),
              StatisticBarChart(
                  data: mockTracking, maxY: 500000, intervalY: 50000),
              // CommonHeading(
              //   heading: "Overview",
              //   subheading: "Statistics in Ho Chi Minh City",
              //   headingStyle: TextStyle(
              //       fontSize: AppFontSize.xlg,
              //       fontWeight: AppFontWeight.bold,
              //       color: colors.primary),
              // ),
              // Column(
              //   children: [
              //     Row(
              //       spacing: AppSpacing.rem600.w,
              //       children: [
              //         CommonText(
              //           "Date",
              //           style: TextStyle(
              //               fontSize: AppFontSize.xxxl,
              //               fontWeight: AppFontWeight.semiBold),
              //         ),
              //         SizedBox(
              //           width: AppSpacing.rem4150.w,
              //           child: SimpleDropdown(
              //               value: _selectedDate ?? dateState.dates.last.date,
              //               itemsList: _datetimeBloc.state.dates.map((option) {
              //                 return DropdownMenuItem<String>(
              //                   value: option.date,
              //                   child: Text(option.date),
              //                 );
              //               }).toList(),
              //               onChanged: _onDateChanged),
              //         ),
              //         RichText(
              //           text: TextSpan(
              //             text: "Total Vehicles: ",
              //             style: TextStyle(
              //               fontSize: AppFontSize.xxxl,
              //               fontWeight: AppFontWeight.semiBold,
              //             ),
              //             children: [
              //               TextSpan(
              //                   text: _statisticBloc
              //                       .state.resultByDate.totalVehicles
              //                       .toString(),
              //                   style: TextStyle(
              //                     fontSize: AppFontSize.xxxl,
              //                     color: colors.primary,
              //                   ))
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //     Padding(
              //       padding: EdgeInsetsGeometry.symmetric(
              //           vertical: AppSpacing.rem600.h),
              //       child: statisticState.resultByDate.date == null
              //           ? SizedBox()
              //           : StatisticPieChart(
              //               detectResult: _statisticBloc.state.resultByDate,
              //               showTitle: true,
              //             ),
              //     ),
              //   ],
              // ),
              // Form(
              //   key: _formKey,
              //   child: Column(
              //     children: [
              //       Row(
              //         spacing: AppSpacing.rem600,
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           CommonText(
              //             "Time range",
              //             style: TextStyle(
              //                 fontSize: AppFontSize.xxxl,
              //                 fontWeight: AppFontWeight.semiBold),
              //           ),
              //           Expanded(
              //               child: SimpleDropdown(
              //             value: _startTime ??
              //                 dateState.timestamps
              //                     .firstWhere(
              //                       (item) =>
              //                           item.date == dateState.dates.last.date,
              //                     )
              //                     .time,
              //             itemsList: _datetimeBloc.state.timestamps
              //                 .where((option) =>
              //                     option.date ==
              //                     (_selectedDate ?? dateState.dates.last.date))
              //                 .map((option) => DropdownMenuItem<String>(
              //                       value: option.time,
              //                       child: Text(option.time),
              //                     ))
              //                 .toList(),
              //             onChanged: (value) {
              //               setState(() {
              //                 _startTime = value;
              //               });
              //             },
              //             validator: (value) => _validateStart(value, _endTime),
              //           )),
              //           CommonText(
              //             "to",
              //             style: TextStyle(
              //                 fontSize: AppFontSize.xxl,
              //                 fontWeight: AppFontWeight.semiBold),
              //           ),
              //           Expanded(
              //             child: SimpleDropdown(
              //               validator: (value) =>
              //                   _validateEnd(_startTime, value),
              //               value: _endTime ?? dateState.timestamps.last.time,
              //               itemsList: _datetimeBloc.state.timestamps
              //                   .where((option) =>
              //                       option.date ==
              //                       (_selectedDate ??
              //                           dateState.dates.last.date))
              //                   .map((option) => DropdownMenuItem<String>(
              //                         value: option.time,
              //                         child: Text(option.time),
              //                       ))
              //                   .toList(),
              //               onChanged: (value) {
              //                 setState(() {
              //                   _endTime = value;
              //                 });
              //               },
              //             ),
              //           ),
              //           CommonPrimaryButton(
              //             text: "OK",
              //             onPressed: _submitForm,
              //           )
              //         ],
              //       ),
              //       Padding(
              //         padding: EdgeInsetsGeometry.symmetric(
              //             vertical: AppSpacing.rem600.h),
              //         child: StatisticLineChart(
              //           maxY: 20000,
              //           intervalY: 2000,
              //           datas: _statisticBloc.state.resultByCustom.details ??
              //               _statisticBloc.state.resultByDate.details ??
              //               [],
              //         ),
              //       ),
              //       Row(children: [
              //         SizedBox(
              //           width: AppSpacing.rem5000.w,
              //           child: CommonStatisticCard(
              //             label: tr('Common.vehicles_count_label'),
              //             value: _statisticBloc
              //                         .state.resultByCustom.totalVehicles !=
              //                     null
              //                 ? _statisticBloc
              //                     .state.resultByCustom.totalVehicles
              //                     .toString()
              //                 : _statisticBloc.state.resultByDate.totalVehicles
              //                     .toString(),
              //             info:
              //                 "Motorcyles: ${_statisticBloc.state.resultByCustom.numberOfMotorcycle ?? _statisticBloc.state.resultByDate.numberOfMotorcycle}",
              //             textColor: colors.buttonPrimaryBackground,
              //           ),
              //         ),
              //         Expanded(
              //             child: StatisticPieChart(
              //           radius: 150,
              //           showTitle: false,
              //           detectResult:
              //               _statisticBloc.state.resultByCustom.date == null
              //                   ? _statisticBloc.state.resultByDate
              //                   : _statisticBloc.state.resultByCustom,
              //         ))
              //       ])
              //     ],
              //   ),
              // ),
              // Divider(
              //   color: colors.dividerColor,
              // ),
              // CommonHeading(
              //   padding: EdgeInsets.symmetric(
              //     vertical: AppSpacing.rem100.h,
              //     horizontal: AppSpacing.rem100.w,
              //   ),
              //   heading: "Statistis",
              //   subheading: "Statistics by region",
              //   headingStyle: TextStyle(
              //       fontSize: AppFontSize.xlg,
              //       fontWeight: AppFontWeight.bold,
              //       color: colors.primary),
              // ),
              // Column(
              //   spacing: AppSpacing.rem600.h,
              //   children: [
              //     Row(
              //       spacing: AppSpacing.rem600.w,
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         CommonText(
              //           "Region",
              //           style: TextStyle(
              //               fontSize: AppFontSize.xxxl,
              //               fontWeight: AppFontWeight.semiBold),
              //         ),
              //         SizedBox(
              //           width: AppSpacing.rem4150.w,
              //           child: SimpleDropdown(
              //             value: _selectedDistrict ??
              //                 _cameraBloc.state.districts.first,
              //             itemsList: _cameraBloc.state.districts.map((option) {
              //               return DropdownMenuItem<String>(
              //                 value: option,
              //                 child: Text(option),
              //               );
              //             }).toList(),
              //             onChanged: (value) {
              //               setState(() {
              //                 _selectedDistrict = value;
              //               });
              //             },
              //           ),
              //         ),
              //       ],
              //     ),
              //     Form(
              //       key: _formKeyDist,
              //       child: Row(
              //         spacing: AppSpacing.rem600.w,
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           CommonText(
              //             "Time: ${_selectedDate ?? dateState.dates.last.date}",
              //             style: TextStyle(
              //                 fontSize: AppFontSize.xxxl,
              //                 fontWeight: AppFontWeight.semiBold),
              //           ),
              //           CommonText(
              //             "Time range",
              //             style: TextStyle(
              //                 fontSize: AppFontSize.xxxl,
              //                 fontWeight: AppFontWeight.semiBold),
              //           ),
              //           Expanded(
              //               child: SimpleDropdown(
              //                   value: _startTimeDist ??
              //                       _datetimeBloc.state.timestamps
              //                           .firstWhere(
              //                             (item) =>
              //                                 item.date ==
              //                                 dateState.dates.last.date,
              //                           )
              //                           .time,
              //                   itemsList: _datetimeBloc.state.timestamps
              //                       .where((option) =>
              //                           option.date ==
              //                           (_selectedDate ??
              //                               dateState.dates.last.date))
              //                       .map((option) => DropdownMenuItem<String>(
              //                             value: option.time,
              //                             child: Text(option.time),
              //                           ))
              //                       .toList(),
              //                   onChanged: (value) {
              //                     setState(() {
              //                       _startTimeDist = value;
              //                     });
              //                   },
              //                   validator: (value) =>
              //                       _validateStart(value, _endTimeDist))),
              //           CommonText(
              //             "to",
              //             style: TextStyle(
              //                 fontSize: AppFontSize.xxl,
              //                 fontWeight: AppFontWeight.semiBold),
              //           ),
              //           Expanded(
              //             child: SimpleDropdown(
              //               validator: (value) =>
              //                   _validateEnd(_startTimeDist, value),
              //               value:
              //                   _endTimeDist ?? dateState.timestamps.last.time,
              //               itemsList: _datetimeBloc.state.timestamps
              //                   .where((option) =>
              //                       option.date ==
              //                       (_selectedDate ??
              //                           dateState.dates.last.date))
              //                   .map((option) => DropdownMenuItem<String>(
              //                         value: option.time,
              //                         child: Text(option.time),
              //                       ))
              //                   .toList(),
              //               onChanged: (value) {
              //                 setState(() {
              //                   _endTimeDist = value;
              //                 });
              //               },
              //             ),
              //           ),
              //           CommonPrimaryButton(
              //             text: "OK",
              //             onPressed: _submitFormDist,
              //           )
              //         ],
              //       ),
              //     ),
              //     statisticState.resultByDistrict.date == null
              //         ? CircularProgressIndicator()
              //         : Row(
              //             children: [
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Bicycles",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfBicycle,
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Motorcycles",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfMotorcycle,
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Cars",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfCar
              //                       .toString(),
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Vans",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfVan
              //                       .toString(),
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Trucks",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfTruck
              //                       .toString(),
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Buses",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfBus
              //                       .toString(),
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Fire Trucks",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfFireTruck
              //                       .toString(),
              //                 ),
              //               ),
              //               Expanded(
              //                 child: SmallStatisticCard(
              //                   title: "Containers",
              //                   value: statisticState
              //                       .resultByDistrict.numberOfContainer
              //                       .toString(),
              //                 ),
              //               ),
              //             ],
              //           ),
              //     Padding(
              //       padding: EdgeInsetsGeometry.symmetric(
              //           vertical: AppSpacing.rem600.h),
              //       child: StatisticLineChart(
              //         maxY: 3000,
              //         intervalY: 300,
              //         datas:
              //             _statisticBloc.state.resultByDistrict.details ?? [],
              //       ),
              //     ),
              //   ],
              // ),
              //   Column(children: [
              //     Row(
              //       spacing: AppSpacing.rem600,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         CommonText(
              //           "Camera",
              //           style: TextStyle(
              //               fontSize: AppFontSize.xxxl,
              //               fontWeight: AppFontWeight.semiBold),
              //         ),
              //         Expanded(
              //             child: SimpleDropdown(
              //                 value: _selectedCam ??
              //                     _cameraBloc.state.cameras.first.privateId,
              //                 itemsList: _cameraBloc.state.cameras
              //                     .map((option) => DropdownMenuItem<String>(
              //                           value: option.privateId,
              //                           child: Text(option.name ?? ""),
              //                         ))
              //                     .toList(),
              //                 onChanged: _onFetchByCam)),
              //       ],
              //     ),
              StatisticBarChart(
                data: mockData.details,
                maxY: 1000,
                intervalY: 50,
              ),
              //     Row(
              //       children: [
              //         Expanded(
              //             child: StatisticPieChart2(
              //           data: _statisticBloc.state.resultByCamera,
              //         )),
              //         CommonStatisticCard(
              //           label: _selectedCam != null
              //               ? _cameraBloc.state.cameras
              //                   .firstWhere(
              //                       (item) => item.privateId == _selectedCam)
              //                   .name
              //               : _cameraBloc.state.cameras.first.name,
              //           // label: "Mai Chí Thọ - Võ Nguyên Giáp (Cát Lái cầu A)",
              //           value: _statisticBloc.state.resultByCamera.totalVehicles
              //               .toString(),
              //           info: "Max: ${mockData.numberOfMotorcycle} motorcycles",
              //           textColor: colors.buttonPrimaryBackground,
              //         )
              //       ],
              //     ),
              //   ])
              Container(
                  margin: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                  height: AppSpacing.rem8975.h,
                  width: double.infinity,
                  color: colors.primaryBannerBg,
                  child: TrafficHeatmap()),
            ]);
          });
        });
      },
    );
  }
}
