import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
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
import 'package:dextra/presentation/modules/commons/widgets/charts/line_chart_sample.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_bar_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_line_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
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
  }

  void _onFetchVehicles() {
    if (_cameraBloc.state.vehicles.isNotEmpty) return;
    _cameraBloc.add(FetchVehiclesEvent());
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
    if (_startTime == null || _endTime == null) {
      _startTime = _datetimeBloc.state.timestamps
          .firstWhere(
            (item) => item.date == _datetimeBloc.state.dates.last.date,
          )
          .time;
      _endTime = _datetimeBloc.state.timestamps.last.time;
    }
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
            .lastWhere(
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
      builder: (context, state) {
        return BlocBuilder<DateTimeBloc, DateTimeState>(
            builder: (context, dateState) {
          if (_datetimeBloc.state.dates.isNotEmpty &&
              _datetimeBloc.state.timestamps.isNotEmpty &&
              _statisticBloc.state.resultByDate.date == null &&
              _cameraBloc.state.districts.isNotEmpty) {
            _statisticBloc.add(DetectByDateEvent(
                query: DetectByDateQuery(
                    date: _datetimeBloc.state.dates.last.date)));
            _onFetchByDist();
          }
          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            if (dateState.dates.isEmpty ||
                dateState.timestamps.isEmpty ||
                statisticState.resultByDate.date == null ||
                statisticState.resultByDistrict.date == null ||
                state.districts.isEmpty ||
                state.cameras.isEmpty) {
              return const CircularProgressIndicator();
            }

            return Column(spacing: AppSpacing.rem1000.h, children: [
              CommonHeading(
                heading: "Overview",
                subheading: "Statistics in Ho Chi Minh City",
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
                            value: _selectedDate ?? dateState.dates.last.date,
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
                    padding: EdgeInsetsGeometry.symmetric(
                        vertical: AppSpacing.rem600.h),
                    child: statisticState.resultByDate.date == null
                        ? SizedBox()
                        : StatisticPieChart(
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
                          value: _startTime ??
                              dateState.timestamps
                                  .firstWhere(
                                    (item) =>
                                        item.date == dateState.dates.last.date,
                                  )
                                  .time,
                          itemsList: _datetimeBloc.state.timestamps
                              .where((option) =>
                                  option.date ==
                                  (_selectedDate ?? dateState.dates.last.date))
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
                            value: _endTime ?? dateState.timestamps.last.time,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ??
                                        dateState.dates.last.date))
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
                      padding: EdgeInsetsGeometry.symmetric(
                          vertical: AppSpacing.rem600.h),
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
                          value: _selectedDistrict ??
                              _cameraBloc.state.districts.first,
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
                          "Time: ${_selectedDate ?? dateState.dates.last.date}",
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
                                value: _startTimeDist ??
                                    _datetimeBloc.state.timestamps
                                        .firstWhere(
                                          (item) =>
                                              item.date ==
                                              dateState.dates.last.date,
                                        )
                                        .time,
                                itemsList: _datetimeBloc.state.timestamps
                                    .where((option) =>
                                        option.date ==
                                        (_selectedDate ??
                                            dateState.dates.last.date))
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
                                    _validateStart(value, _endTimeDist))),
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
                            value:
                                _endTimeDist ?? dateState.timestamps.last.time,
                            itemsList: _datetimeBloc.state.timestamps
                                .where((option) =>
                                    option.date ==
                                    (_selectedDate ??
                                        dateState.dates.last.date))
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
                          onPressed: _submitFormDist,
                        )
                      ],
                    ),
                  ),
                  statisticState.resultByDistrict.date == null
                      ? CircularProgressIndicator()
                      : Row(
                          children: [
                            Expanded(
                              child: SmallStatisticCard(
                                title: "Bicycles",
                                value: statisticState
                                    .resultByDistrict.numberOfBicycle,
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
                                value: statisticState
                                    .resultByDistrict.numberOfCar
                                    .toString(),
                              ),
                            ),
                            Expanded(
                              child: SmallStatisticCard(
                                title: "Vans",
                                value: statisticState
                                    .resultByDistrict.numberOfVan
                                    .toString(),
                              ),
                            ),
                            Expanded(
                              child: SmallStatisticCard(
                                title: "Trucks",
                                value: statisticState
                                    .resultByDistrict.numberOfTruck
                                    .toString(),
                              ),
                            ),
                            Expanded(
                              child: SmallStatisticCard(
                                title: "Buses",
                                value: statisticState
                                    .resultByDistrict.numberOfBus
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
                    padding: EdgeInsetsGeometry.symmetric(
                        vertical: AppSpacing.rem600.h),
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
                      value: _selectedCam ??
                          _cameraBloc.state.cameras.first.privateId,
                      itemsList: _cameraBloc.state.cameras
                          .map((option) => DropdownMenuItem<String>(
                                value: option.privateId,
                                child: Text(option.name ?? ""),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCam = value;
                        });
                        print(_selectedCam);
                      },
                      validator: (value) => _validateStart(value, _endTime),
                    )),
                  ],
                ),
                StatisticBarChart(
                  data: [],
                  maxY: 10,
                  intervalY: 1,
                )
              ])
            ]);
          });
        });
      },
    );
  }
}
