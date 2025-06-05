import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/date_picker.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/time_picker.dart';
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

class ScheduleTab extends StatefulWidget {
  const ScheduleTab({super.key});

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  final _cameraBloc = getIt.get<CameraBloc>();

  // final List<String> _cams = [
  //   'Phan Dang Luu - Dinh Tien Hoang 2',
  //   'Vo Nguyen Giap - Thao Dien',
  //   'Ly Tu Trong - Chu Manh Trinh',
  //   'Dang Thuc Vinh - Trinh Thi Mieng',
  // ];

  // final List<String> _districts = [
  //   'District 1',
  //   'District 3',
  //   'District 4',
  //   'District 5',
  //   'District 6',
  //   'District 7',
  //   'District 8',
  //   'District 10',
  //   'District 11',
  //   'District 12',
  //   'Binh Thanh District',
  //   'Go Vap District',
  //   'Phu Nhuan District',
  //   'Tan Binh District',
  //   'Tan Phu District',
  //   'Thu Duc District',
  //   'Binh Chanh District',
  //   'Cu Chi District',
  //   'Hoc Mon District',
  //   'Nha Be District',
  //   'Can Gio District',
  //   'Thu Duc City',
  // ];

  String? _selectedCam;
  String? _selectedDistrict;
  DateTime? _startDate;
  DateTime? _endDate;

  TimeOfDay? _startTime;
  TimeOfDay? _endTime;
  TimeOfDay? _startTimeDist;
  TimeOfDay? _endTimeDist;

  DateTime? _selectedDate;

  final List<String> _byDateList = [];
  final List<String> _byDistList = [];
  final List<String> _byDateRangeList = [];
  final List<String> _byCamList = [];

  @override
  void initState() {
    super.initState();
    // _onFetchCamera();
    // _onFetchDistrict();
  }

  // void _onFetchCamera() {
  //   if (_cameraBloc.state.cameras.isNotEmpty) {
  //     return;
  //   }
  //   _cameraBloc.add(FetchCamerasEvent());
  // }

  // void _onFetchDistrict() {
  //   if (_cameraBloc.state.districts.isNotEmpty) return;
  //   _cameraBloc.add(FetchDistrictsEvent());
  // }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return tr('Common.select_time');

    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('HH:mm:ss').format(dt);
  }

  void _scheduleByDate() {
    if (_selectedDate != null && _startTime != null && _endTime != null) {
      setState(() {
        _byDateList.add(
            "${DateFormat('yyyy-MM-dd').format(_selectedDate!)}, ${_formatTime(_startTime)} to ${_formatTime(_endTime)} ");
      });
    } else {
      setState(() {
        _byDateList.add("Select valid date time!");
      });
    }
  }

  void _scheduleByDateRange() {
    if (_startDate != null && _endDate != null) {
      setState(() {
        _byDateRangeList.add(
            "${DateFormat('yyyy-MM-dd').format(_startDate!)} to ${DateFormat('yyyy-MM-dd').format(_endDate!)}");
      });
    } else {
      setState(() {
        _byDateRangeList.add("Select valid date range!");
      });
    }
  }

  void _scheduleByDist() {
    if (_startTimeDist != null && _endTimeDist != null) {
      setState(() {
        _byDistList.add(
            "${_selectedDistrict ?? _cameraBloc.state.districts.first}, ${_formatTime(_startTimeDist)} to ${_formatTime(_endTimeDist)} ");
      });
    } else {
      setState(() {
        _byDistList.add("Select valid value!");
      });
    }
  }

  void _scheduleByCam() {
    setState(() {
      _byCamList
          .add(_selectedCam ?? _cameraBloc.state.cameras.first.privateId!);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
      if (state.cameras.isEmpty || state.districts.isEmpty) {
        return CircularProgressIndicator();
      }
      return SizedBox(
        width: double.infinity,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(spacing: AppSpacing.rem1000.h, children: [
            CommonHeading(
              heading: "Schedule export",
              headingStyle: TextStyle(
                  fontSize: AppFontSize.xlg,
                  fontWeight: AppFontWeight.bold,
                  color: colors.primary),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.rem300.h,
              children: [
                CommonText(
                  "BY DATE",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      fontWeight: AppFontWeight.bold,
                      color: colors.primary),
                ),
                Row(spacing: AppSpacing.rem600.w, children: [
                  CommonText(
                    "Date: ",
                    style: TextStyle(
                        fontSize: AppFontSize.xxxl,
                        fontWeight: AppFontWeight.semiBold),
                  ),
                  Column(
                    spacing: AppSpacing.rem300.h,
                    children: [
                      SizedBox(
                        width: AppSpacing.rem5000.w,
                        child: PickDateButton(
                          onDateSelected: (date) {
                            setState(() {
                              _selectedDate = date;
                            });
                          },
                        ),
                      ),
                      Row(
                        spacing: AppSpacing.rem600.w,
                        children: [
                          CommonText(
                            "From",
                          ),
                          SizedBox(
                            width: AppSpacing.rem3375.w,
                            child: PickTimeButton(
                              onTimeSelected: (time) {
                                setState(() {
                                  _startTime = time;
                                });
                              },
                            ),
                          ),
                          CommonText(
                            "To",
                          ),
                          SizedBox(
                            width: AppSpacing.rem3375.w,
                            child: PickTimeButton(
                              onTimeSelected: (time) {
                                setState(() {
                                  _endTime = time;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CommonPrimaryButton(
                      text: "Schedule", onPressed: _scheduleByDate)
                ]),
                ..._byDateList.map(
                  (date) => CommonText("Schedule statistics for: $date"),
                ),
                Divider(
                  color: colors.dividerColor,
                ),
                Row(spacing: AppSpacing.rem600.w, children: [
                  CommonText(
                    "Date range: ",
                    style: TextStyle(
                        fontSize: AppFontSize.xxxl,
                        fontWeight: AppFontWeight.semiBold),
                  ),
                  Expanded(child: PickDateButton(
                    onDateSelected: (date) {
                      setState(() {
                        _startDate = date;
                      });
                    },
                  )),
                  Expanded(child: PickDateButton(
                    onDateSelected: (date) {
                      setState(() {
                        _endDate = date;
                      });
                    },
                  )),
                  CommonPrimaryButton(
                      text: "Schedule", onPressed: _scheduleByDateRange)
                ]),
                ..._byDateRangeList.map(
                  (date) => CommonText("Schedule statistics on: $date"),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.rem300.w,
              children: [
                CommonText(
                  "BY REGION & CAMERA",
                  style: TextStyle(
                      fontSize: AppFontSize.xxxl,
                      fontWeight: AppFontWeight.bold,
                      color: colors.primary),
                ),
                Row(spacing: AppSpacing.rem300.w, children: [
                  CommonText(
                    "Region: ",
                    style: TextStyle(
                        fontSize: AppFontSize.xxxl,
                        fontWeight: AppFontWeight.semiBold),
                  ),
                  Expanded(
                      child: SimpleDropdown(
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
                          })),
                  SizedBox(
                    width: AppSpacing.rem2350.w,
                    child: PickTimeButton(
                      onTimeSelected: (time) {
                        setState(() {
                          _startTimeDist = time;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: AppSpacing.rem2350.w,
                    child: PickTimeButton(
                      onTimeSelected: (time) {
                        setState(() {
                          _endTimeDist = time;
                        });
                      },
                    ),
                  ),
                  CommonPrimaryButton(
                      text: "Schedule", onPressed: _scheduleByDist)
                ]),
                ..._byDistList.map(
                  (dist) => CommonText("Schedule statistics for: $dist"),
                ),
                Divider(
                  color: colors.dividerColor,
                ),
                Row(spacing: AppSpacing.rem300.w, children: [
                  CommonText(
                    "Camera: ",
                    style: TextStyle(
                        fontSize: AppFontSize.xxxl,
                        fontWeight: AppFontWeight.semiBold),
                  ),
                  Expanded(
                      child: SimpleDropdown(
                          itemsList: _cameraBloc.state.cameras.map((option) {
                            return DropdownMenuItem<String>(
                              value: option.privateId,
                              child: Text(option.name ?? ""),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedCam = value;
                            });
                          })),
                  CommonPrimaryButton(
                      text: "Schedule", onPressed: _scheduleByCam)
                ]),
                ..._byCamList.map(
                  (cam) => CommonText("Schedule statistics for: $cam"),
                ),
              ],
            )
          ]);
        }),
      );
    });
  }
}
