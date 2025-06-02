// import 'package:dextra/di/injectable.dart';
// import 'package:dextra/domain/usecases/statistic/queries/detect_by_date/detect_by_date_querry.dart';
// import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
// import 'package:dextra/presentation/modules/commons/bloc/datetime/datetime_bloc.dart';
// import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
// import 'package:dextra/presentation/modules/commons/widgets/charts/bar_chart_sample1.dart';
// import 'package:dextra/presentation/modules/commons/widgets/charts/bar_chart_sample3.dart';
// import 'package:dextra/presentation/modules/commons/widgets/charts/line_chart_sample.dart';
// import 'package:dextra/presentation/modules/commons/widgets/charts/pie_chart_sample.dart';
// import 'package:dextra/presentation/modules/commons/widgets/charts/pie_chart_sample1.dart';
// import 'package:dextra/presentation/modules/commons/user/widgets/statistic/date_time_picker.dart';
// import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
// import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
// import 'package:dextra/presentation/modules/commons/widgets/map/heatmap.dart';
// import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
// import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
// import 'package:dextra/theme/color/app_color.dart';
// import 'package:dextra/theme/font/app_font_size.dart';
// import 'package:dextra/theme/font/app_font_weight.dart';
// import 'package:dextra/theme/spacing/app_spacing.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';

// class ScheduleTab extends StatefulWidget {
//   const ScheduleTab({super.key});

//   @override
//   State<ScheduleTab> createState() => _ScheduleTabState();
// }

// class _ScheduleTabState extends State<ScheduleTab> {
//   final _cameraBloc = getIt.get<CameraBloc>();
//   final _datetimeBloc = getIt.get<DateTimeBloc>();
//   final _statisticBloc = getIt.get<StatisticBloc>();

//   final List<String> _options = [
//     'Last 7 days',
//     'Last week',
//     'Last month',
//     'Custom',
//   ];
//   final List<String> _cams = [
//     'Phan Dang Luu - Dinh Tien Hoang 2',
//     'Vo Nguyen Giap - Thao Dien',
//     'Ly Tu Trong - Chu Manh Trinh',
//     'Dang Thuc Vinh - Trinh Thi Mieng',
//   ];

//   final List<String> _districts = [
//     'District 1',
//     'District 3',
//     'District 4',
//     'District 5',
//     'District 6',
//     'District 7',
//     'District 8',
//     'District 10',
//     'District 11',
//     'District 12',
//     'Binh Thanh District',
//     'Go Vap District',
//     'Phu Nhuan District',
//     'Tan Binh District',
//     'Tan Phu District',
//     'Thu Duc District',
//     'Binh Chanh District',
//     'Cu Chi District',
//     'Hoc Mon District',
//     'Nha Be District',
//     'Can Gio District',
//     'Thu Duc City',
//   ];

//   String _selectedCam = 'Phan Dang Luu - Dinh Tien Hoang 2';
//   String _selectedVehicle = 'bicycle';
//   String _selectedDistrict = 'District 1';
//   String _selectedOption = 'Last 7 days';
//   DateTime? _startDate;
//   DateTime? _endDate;
//   TimeOfDay? _startTime;
//   TimeOfDay? _endTime;

//   String? _selectedDate = null;
//   String? _selectedTime = null;

//   bool _isTimeEnable = false;

//   @override
//   void initState() {
//     super.initState();
//     _onFetchVehicles();
//     _onFetchTimestamp();
//     _onFetchDate();
//   }

//   Future<void> _pickDate(BuildContext context, bool isStart) async {
//     final current = DateTime.now();
//     final initialDate =
//         isStart ? (_startDate ?? current) : (_endDate ?? current);

//     final DateTime? newDate = await showDatePicker(
//       context: context,
//       initialDate: initialDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );

//     if (newDate == null) return;

//     final isInvalidStart = isStart &&
//         _endDate != null &&
//         !newDate.isBefore(_endDate!) &&
//         _endDate != newDate;
//     final isInvalidEnd = !isStart &&
//         _startDate != null &&
//         !newDate.isAfter(_startDate!) &&
//         _startDate != newDate;

//     if (isInvalidStart || isInvalidEnd) {
//       final errorMessage = isStart
//           ? tr('Common.start_date_after_end_date')
//           : tr('Common.end_date_before_start_date');

//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: CommonText(tr("Common.invalid_date_range")),
//           content: CommonText(errorMessage),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: CommonText(tr("Common.ok")),
//             ),
//           ],
//         ),
//       );
//       return;
//     }

//     setState(() {
//       isStart ? _startDate = newDate : _endDate = newDate;
//     });
//     if (_startDate == _endDate && _startDate != null) {
//       setState(() {
//         _isTimeEnable = true;
//       });
//     } else {
//       setState(() {
//         _isTimeEnable = false;
//       });
//     }
//   }

//   Future<void> _pickTime(bool isStart) async {
//     final picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );

//     if (picked != null) {
//       setState(() {
//         if (isStart) {
//           _startTime = picked;
//         } else {
//           _endTime = picked;
//         }
//       });
//     }
//   }

//   String _formatTime(TimeOfDay? time) {
//     if (time == null) return tr('Common.select_time');

//     final now = DateTime.now();
//     final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
//     return DateFormat('HH:mm').format(dt);
//   }

//   void _onFetchVehicles() {
//     if (_cameraBloc.state.vehicles.isNotEmpty) {
//       return;
//     }
//     _cameraBloc.add(FetchVehiclesEvent());
//   }

//   void _onFetchTimestamp() {
//     if (_datetimeBloc.state.timestamps.isNotEmpty) {
//       return;
//     }
//     _datetimeBloc.add(FetchTimestampEvent());
//   }

//   void _onFetchDate() {
//     if (_datetimeBloc.state.timestamps.isNotEmpty) {
//       return;
//     }
//     _datetimeBloc.add(FetchDateEvent());
//   }

//   void _onDateChanged(String? value) {
//     if (value != null) {
//       setState(() {
//         _selectedDate = value;
//         _selectedTime = _datetimeBloc.state.timestamps
//             .firstWhere((timestamp) => timestamp.date == value)
//             .time;
//       });
//       print(value + _selectedTime.toString() ?? '');
//       // _statisticBloc.add(
//       //   DetectByDateEvent(
//       //     query: DetectByDateQuery(
//       //       date: value,
//       //     ),
//       //   ),
//       // );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final colors = IAppColor.watch(context);

//     return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
//       return BlocBuilder<DateTimeBloc, DateTimeState>(
//           builder: (context, dateState) {
//         if (_datetimeBloc.state.dates.isNotEmpty && _selectedDate == null) {
//           _statisticBloc.add(DetectByDateEvent(
//               query: DetectByDateQuery(
//                   date: _datetimeBloc.state.dates.last.date)));
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             setState(() {
//               _selectedDate = dateState.timestamps.last.date;
//               _selectedTime = dateState.timestamps.last.time;
//             });
//           });
//         }

//         return _selectedDate == null || _selectedTime == null
//             ? SizedBox()
//             : SizedBox(
//                 width: double.infinity,
//                 child: LayoutBuilder(builder: (context, constraints) {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Dropdown
//                       Row(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: AppSpacing.rem300.w),
//                             width: constraints.maxWidth * 0.5,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     CommonText(
//                                       "Date",
//                                       style: TextStyle(
//                                           fontSize: AppFontSize.xxxl,
//                                           fontWeight: AppFontWeight.semiBold),
//                                     ),
//                                     SizedBox(
//                                       width: AppSpacing.rem200.h,
//                                     ),
//                                     Expanded(
//                                       child: SimpleDropdown(
//                                           value: _datetimeBloc
//                                               .state.dates.last.date,
//                                           itemsList: _datetimeBloc.state.dates
//                                               .map((option) {
//                                             return DropdownMenuItem<String>(
//                                               value: option.date,
//                                               child: Text(option.date),
//                                             );
//                                           }).toList(),
//                                           onChanged: _onDateChanged),
//                                     ),
//                                   ],
//                                 ),
//                                 if (_selectedOption == tr('Common.custom')) ...[
//                                   Container(
//                                     padding: EdgeInsets.only(
//                                         top: AppSpacing.rem250.h),
//                                     child: Row(
//                                       children: [
//                                         Expanded(
//                                             child: DateTimePicker(
//                                           label: tr("Common.start"),
//                                           onPressed: () =>
//                                               _pickDate(context, true),
//                                           date: _startDate,
//                                           isDate: true,
//                                         )),
//                                         const SizedBox(width: 12),
//                                         Expanded(
//                                             child: DateTimePicker(
//                                           label: tr("Common.end"),
//                                           onPressed: () =>
//                                               _pickDate(context, false),
//                                           date: _endDate,
//                                           isDate: true,
//                                         )),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                                 SizedBox(
//                                   height: AppSpacing.rem300.h,
//                                 ),
//                                 Row(
//                                   children: [
//                                     CommonText(
//                                       tr('Common.area'),
//                                       style: TextStyle(
//                                           fontSize: AppFontSize.xxxl,
//                                           fontWeight: AppFontWeight.semiBold),
//                                     ),
//                                     SizedBox(
//                                       width: AppSpacing.rem200.w,
//                                     ),
//                                     Expanded(
//                                       child: DropdownButtonFormField<String>(
//                                         iconEnabledColor:
//                                             colors.menuActiveTextColor,
//                                         style: TextStyle(
//                                             color: colors.menuActiveTextColor,
//                                             fontWeight: AppFontWeight.regular,
//                                             fontSize: AppFontSize.xxl,
//                                             overflow: TextOverflow.ellipsis),
//                                         decoration: InputDecoration(
//                                           fillColor: colors.primaryBannerBg,
//                                           filled: true,
//                                           contentPadding:
//                                               const EdgeInsets.symmetric(
//                                                   horizontal: AppSpacing.rem500,
//                                                   vertical: AppSpacing.rem250),
//                                           border: OutlineInputBorder(
//                                             borderRadius: BorderRadius.circular(
//                                                 AppSpacing.rem350.w),
//                                             borderSide: BorderSide.none,
//                                           ),
//                                         ),
//                                         value: _selectedCam,
//                                         items: _cams.map((option) {
//                                           return DropdownMenuItem<String>(
//                                             value: option,
//                                             child: Text(option),
//                                           );
//                                         }).toList(),
//                                         onChanged: (value) {
//                                           setState(() {});
//                                         },
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: AppSpacing.rem300.h,
//                                 ),
//                                 BlocBuilder<StatisticBloc, StatisticState>(
//                                     builder: (context, statisticSate) {
//                                   return CommonStatisticCard(
//                                     label: tr('Common.vehicles_count_label'),
//                                     value: _statisticBloc
//                                         .state.resultByDate.numberOfCar,
//                                     info: tr('Common.compare_yesterday_label') +
//                                         tr('Common.default_compare_yesterda_value'),
//                                     textColor: colors.buttonPrimaryBackground,
//                                   );
//                                 }),
//                               ],
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: AppSpacing.rem300.w),
//                               width: constraints.maxWidth * 0.5,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 spacing: AppSpacing.rem300.h,
//                                 children: [
//                                   // Row(
//                                   //   mainAxisAlignment:
//                                   //       MainAxisAlignment.spaceBetween,
//                                   //   children: [
//                                   //     CommonText(
//                                   //       "Time",
//                                   //       style: TextStyle(
//                                   //           fontSize: AppFontSize.xxxl,
//                                   //           fontWeight: AppFontWeight.semiBold),
//                                   //     ),
//                                   //     SizedBox(
//                                   //       width: AppSpacing.rem200.w,
//                                   //     ),
//                                   //     ElevatedButton(
//                                   //       onPressed: _isTimeEnable
//                                   //           ? () => _pickTime(true)
//                                   //           : null,
//                                   //       child: CommonText(
//                                   //         '${tr('Common.start')}: ${_formatTime(_startTime)}',
//                                   //         style: TextStyle(
//                                   //             fontSize: AppFontSize.xs),
//                                   //       ),
//                                   //     ),
//                                   //     ElevatedButton(
//                                   //       onPressed: _isTimeEnable
//                                   //           ? () => _pickTime(false)
//                                   //           : null,
//                                   //       child: CommonText(
//                                   //         '${tr('Common.end')}: ${_formatTime(_endTime)}',
//                                   //         style: TextStyle(
//                                   //             fontSize: AppFontSize.xs),
//                                   //       ),
//                                   //     )
//                                   //   ],
//                                   // ),
//                                   // CommonText(
//                                   //   tr('Common.time_range_info'),
//                                   //   style: TextStyle(
//                                   //       fontSize: AppFontSize.xxs,
//                                   //       color: colors.textMuted),
//                                   // ),
//                                   // SizedBox(
//                                   //   height: AppSpacing.rem300.h,
//                                   // ),
//                                   Row(
//                                     children: [
//                                       CommonText(
//                                         "Time",
//                                         style: TextStyle(
//                                             fontSize: AppFontSize.xxxl,
//                                             fontWeight: AppFontWeight.semiBold),
//                                       ),
//                                       SizedBox(
//                                         width: AppSpacing.rem200.w,
//                                       ),
//                                       Expanded(
//                                         child: SimpleDropdown(
//                                           value: _selectedTime,
//                                           itemsList: _datetimeBloc
//                                               .state.timestamps
//                                               .where((option) =>
//                                                   option.date == _selectedDate)
//                                               .map((option) =>
//                                                   DropdownMenuItem<String>(
//                                                     value: option.time,
//                                                     child: Text(option.time),
//                                                   ))
//                                               .toList(),
//                                           onChanged: (value) {
//                                             setState(() {
//                                               _selectedTime = value;
//                                             });
//                                           },
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Row(
//                                     children: [
//                                       CommonText(
//                                         tr('Common.vehicle'),
//                                         style: TextStyle(
//                                             fontSize: AppFontSize.xxxl,
//                                             fontWeight: AppFontWeight.semiBold),
//                                       ),
//                                       SizedBox(
//                                         width: AppSpacing.rem200.w,
//                                       ),
//                                       Expanded(
//                                         child: SimpleDropdown(
//                                           value:
//                                               _cameraBloc.state.vehicles.first,
//                                           itemsList: _cameraBloc.state.vehicles
//                                               .map((option) {
//                                             return DropdownMenuItem<String>(
//                                               value: option,
//                                               child: Text(option),
//                                             );
//                                           }).toList(),
//                                           onChanged: (value) {
//                                             setState(() {
//                                               _selectedVehicle = value;
//                                             });
//                                           },
//                                         ),
//                                       ),
//                                     ],
//                                   ),

//                                   CommonStatisticCard(
//                                     label: tr('Common.avg_congestion_label'),
//                                     value: tr('Common.default_avg_congestion'),
//                                     info: tr('Common.peak_congestion_label') +
//                                         tr('Common.default_peak_congestion_value'),
//                                     background: colors.cardBackground2,
//                                     decoration: colors.cardDecorate2,
//                                   ),
//                                 ],
//                               ))
//                         ],
//                       ),
//                       Container(
//                           margin: EdgeInsets.symmetric(
//                               vertical: AppSpacing.rem600.h),
//                           height: AppSpacing.rem8975.h,
//                           width: double.infinity,
//                           color: colors.primaryBannerBg,
//                           child: TrafficHeatmap()),
//                       Center(
//                         child: SizedBox(
//                             height: AppSpacing.rem8975.h,
//                             width: AppSpacing.rem9999.w,
//                             child: LineChartSample1()),
//                       ),
//                       SizedBox(
//                         height: AppSpacing.rem600.h,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                               height: AppSpacing.rem5000.h,
//                               width: AppSpacing.rem6250.w,
//                               child: PieChartSample2()),
//                           Container(
//                               color: colors.primaryBannerBg,
//                               height: AppSpacing.rem6250.h,
//                               width: AppSpacing.rem6250.w,
//                               child: BarChartSample1())
//                         ],
//                       ),
//                       Center(
//                         child: CommonHeading(
//                           heading: tr('Common.overview'),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                             height: AppSpacing.rem6250.h,
//                             width: AppSpacing.rem9999.w,
//                             child: BarChartSample3()),
//                       ),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
//                         child: SizedBox(
//                           width: AppSpacing.rem3875.w,
//                           child: DropdownButtonFormField<String>(
//                             iconEnabledColor: colors.menuActiveTextColor,
//                             style: TextStyle(
//                                 color: colors.menuActiveTextColor,
//                                 fontWeight: AppFontWeight.regular,
//                                 fontSize: AppFontSize.xxl,
//                                 overflow: TextOverflow.ellipsis),
//                             decoration: InputDecoration(
//                               fillColor: colors.primaryBannerBg,
//                               filled: true,
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: AppSpacing.rem500,
//                                   vertical: AppSpacing.rem250),
//                               border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.circular(AppSpacing.rem350.w),
//                                 borderSide: BorderSide.none,
//                               ),
//                             ),
//                             value: _selectedDistrict,
//                             items: _districts.map((option) {
//                               return DropdownMenuItem<String>(
//                                 value: option,
//                                 child: Text(option),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setState(() {});
//                             },
//                           ),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                               height: AppSpacing.rem5000.h,
//                               width: AppSpacing.rem6250.w,
//                               child: PieChartSample1()),
//                           Column(
//                             children: [
//                               CommonStatisticCard(
//                                 label: tr('Common.vehicles_count_label'),
//                                 value: tr('Common.default_count_value'),
//                                 info: tr('Common.compare_yesterday_label') +
//                                     tr('Common.default_compare_yesterda_value'),
//                                 textColor: colors.buttonPrimaryBackground,
//                               ),
//                               SizedBox(
//                                 height: AppSpacing.rem600,
//                               ),
//                               CommonStatisticCard(
//                                 label: tr('Common.avg_congestion_label'),
//                                 value: tr('Common.default_avg_congestion'),
//                                 info: tr('Common.peak_congestion_label') +
//                                     tr('Common.default_peak_congestion_value'),
//                                 background: colors.cardBackground2,
//                                 decoration: colors.cardDecorate2,
//                               ),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   );
//                 }),
//               );
//       });
//     });
//   }
// }

import 'package:flutter/material.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
