import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_querry.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/charts/statistic_pie_chart.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
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
  final _cameraBloc = getIt.get<CameraBloc>();
  final _datetimeBloc = getIt.get<DateTimeBloc>();
  final _statisticBloc = getIt.get<StatisticBloc>();

  String _selectedCam = 'Phan Dang Luu - Dinh Tien Hoang 2';
  String _selectedVehicle = 'bicycle';
  String _selectedDistrict = 'District 1';
  DateTime? _startDate;
  DateTime? _endDate;
  String? _startTime;
  String? _endTime;

  String? _selectedDate;
  String? _selectedTime;

  bool _isTimeEnable = false;

  @override
  void initState() {
    super.initState();
    _onFetchVehicles();
    _onFetchTimestamp();
    _onFetchDate();
  }

  void _onFetchVehicles() {
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

  void _onDateChanged(String? value) {
    if (value != null) {
      final filteredTimestamps = _datetimeBloc.state.timestamps
          .where((timestamp) => timestamp.date == value)
          .toList();
      setState(() {
        _selectedDate = value;
        _selectedTime = filteredTimestamps.isNotEmpty
            ? filteredTimestamps.first.time
            : null;
      });
    }
  }

  // Duration _parseTime(String timeStr) {
  //   final parts = timeStr.split(":").map(int.parse).toList();
  //   return Duration(hours: parts[0], minutes: parts[1], seconds: parts[2]);
  // }
  DateTime _parseTime(String timeString) {
    return DateFormat("HH:mm:ss").parse(timeString);
  }

  String? _validateStart(String? value) {
    final startTime = _parseTime(value!);
    final endTime =
        _parseTime(_endTime ?? _datetimeBloc.state.timestamps.last.time);
    if (endTime.isBefore(startTime)) {
      return 'Invalid time range';
    }
    return null;
  }

  String? _validateEnd(String? value) {
    final endTime = _parseTime(value!);
    final startTime =
        _parseTime(_startTime ?? _datetimeBloc.state.timestamps.last.time);
    if (endTime.isBefore(startTime)) {
      return 'Invalid time range';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // _statisticBloc.add(DetectByDateEvent(
      //     query: DetectByDateQuery(
      //         date: _selectedDate ?? _datetimeBloc.state.dates.last.date,
      //         startTime: _startTime ??
      //             _datetimeBloc.state.timestamps.last.time,
      //         endTime: _endTime ?? _datetimeBloc.state.timestamps.last.time)));
      print('Valid value: $_startTime to $_endTime on $_selectedDate');
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
          if (_datetimeBloc.state.dates.isNotEmpty) {
            _statisticBloc.add(DetectByDateEvent(
                query: DetectByDateQuery(
                    date: _datetimeBloc.state.dates.last.date)));
          }
          return BlocBuilder<StatisticBloc, StatisticState>(
              builder: (context, statisticState) {
            if (dateState.dates.isEmpty ||
                dateState.timestamps.isEmpty ||
                statisticState.result.totalVehicles == null) {
              return const CircularProgressIndicator();
            }

            return Form(
              key: _formKey,
              child: Column(spacing: AppSpacing.rem1000.h, children: [
                CommonText("Overview",
                    style: TextStyle(
                        fontSize: AppFontSize.xlg,
                        fontWeight: AppFontWeight.bold,
                        color: colors.primary)),
                Divider(
                  color: colors.dividerColor,
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
                              itemsList:
                                  _datetimeBloc.state.dates.map((option) {
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
                                      .state.result.totalVehicles
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
                      child: StatisticPieChart(
                        detectResult: statisticState.result,
                      ),
                    ),
                  ],
                ),
                Column(
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
                              value:
                                  _startTime ?? dateState.timestamps.last.time,
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
                                  _startTime = value;
                                });
                              },
                              validator: _validateStart),
                        ),
                        CommonText(
                          "to",
                          style: TextStyle(
                              fontSize: AppFontSize.xxl,
                              fontWeight: AppFontWeight.semiBold),
                        ),
                        Expanded(
                          child: SimpleDropdown(
                            validator: _validateEnd,
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
                  ],
                )
              ]),
            );
          });
        });
      },
    );
  }
}
