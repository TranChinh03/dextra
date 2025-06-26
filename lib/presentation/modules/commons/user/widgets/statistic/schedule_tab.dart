import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date/send_email_by_date_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/date_picker.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/shareds/utils/date_validators.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleTab extends StatefulWidget {
  const ScheduleTab({super.key});

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  final _statisticBloc = getIt.get<StatisticBloc>();

  DateTime? _startDate;
  DateTime? _endDate;

  String _textmessage = '';

  @override
  void initState() {
    _statisticBloc.add(FetchSchedulesEvent(
        email: FirebaseAuth.instance.currentUser?.email ?? ''));
    super.initState();
  }

  void _onSendEmailByDate(String dateFrom, String dateTo) {
    final email = FirebaseAuth.instance.currentUser?.email;
    _statisticBloc.add(SendEmailByDateEvent(
        query: SendEmailByDateQuery(
      email: email,
      dateFrom: dateFrom,
      dateTo: dateTo,
    )));
  }

  // String _formatTime(TimeOfDay? time) {
  //   if (time == null) return tr('Common.select_time');

  //   final now = DateTime.now();
  //   final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
  //   return DateFormat('HH:mm:ss').format(dt);
  // }

  // void _scheduleByDate() {
  //   if (_selectedDate != null && _startTime != null && _endTime != null) {
  //     setState(() {
  //       _byDateList.add(
  //           "${DateFormat('yyyy-MM-dd').format(_selectedDate!)}, ${_formatTime(_startTime)} to ${_formatTime(_endTime)} ");
  //     });
  //   } else {
  //     setState(() {
  //       _byDateList.add(tr('Common.select_valid_date_time'));
  //     });
  //   }
  // }

  void _scheduleByDateRange() {
    if (_startDate == null || _endDate == null) {
      setState(() {
        _textmessage = tr('Common.select_valid_date_range');
      });
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.error,
        title: tr('Common.schedule_export'),
        desc: _textmessage,
        btnOkOnPress: () {},
        btnOkColor: Colors.redAccent.shade400,
      ).show();
      return;
    }

    final isValid = DateValidators.validateDates(
      _startDate,
      _endDate,
      tr: (key) => tr(key),
    );

    if (isValid == true) {
      final dateFrom = DateFormat('yyyy-MM-dd').format(_startDate!);
      final dateTo = DateFormat('yyyy-MM-dd').format(_endDate!);
      _onSendEmailByDate(dateFrom, dateTo);
    } else {
      setState(() {
        _textmessage = tr('Common.select_valid_date_range');
      });
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.error,
        title: tr('Common.schedule_export'),
        desc: _textmessage,
        btnOkOnPress: () {},
        btnOkColor: Colors.redAccent.shade700,
      ).show();
    }
  }

  // void _scheduleByDist() {
  //   if (_startTimeDist != null && _endTimeDist != null) {
  //     setState(() {
  //       _byDistList.add(
  //           "${_selectedDistrict ?? _cameraBloc.state.districts.first}, ${_formatTime(_startTimeDist)} to ${_formatTime(_endTimeDist)} ");
  //     });
  //   } else {
  //     setState(() {
  //       _byDistList.add(tr('Common.select_valid_value'));
  //     });
  //   }
  // }

  // void _scheduleByCam() {
  //   setState(() {
  //     _byCamList
  //         .add(_selectedCam ?? _cameraBloc.state.cameras.first.privateId!);
  //   });
  // }

  void _onSendEmailStatusChangeState(StatisticState state) {
    if (state.sendEmailState.status == ApiStatus.hasData) {
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.success,
        title: tr('Common.schedule_export'),
        desc: state.sendEmailState.dataResponse?.message,
        btnOkOnPress: () {
          _statisticBloc.add(FetchSchedulesEvent(
              email: FirebaseAuth.instance.currentUser?.email ?? ''));
        },
      ).show();
    } else if (state.sendEmailState.status == ApiStatus.error) {
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.error,
        title: tr('Common.schedule_export'),
        desc: state.sendEmailState.errorResponse?.message,
        btnOkOnPress: () {},
      ).show();
    }
  }

  void _onCancelScheduleStatusChangeState(StatisticState state) {
    if (state.cancelScheduleStatus == ApiStatus.hasData) {
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.success,
        title: tr('Common.cancel_schedule'),
        desc: tr('Common.cancel_schedule_success'),
        btnOkOnPress: () {
          _statisticBloc.add(FetchSchedulesEvent(
              email: FirebaseAuth.instance.currentUser?.email ?? ''));
        },
      ).show();
    } else if (state.cancelScheduleStatus == ApiStatus.error) {
      AwesomeDialog(
        width: AppSpacing.rem6250.w,
        context: context,
        dialogType: DialogType.error,
        title: 'Cancel Schedule',
        desc: tr('Common.cancel_schedule_fail'),
        btnOkOnPress: () {},
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<StatisticBloc, StatisticState>(
          listenWhen: (previous, current) =>
              previous.sendEmailState != current.sendEmailState,
          listener: (context, state) {
            _onSendEmailStatusChangeState(state);
          },
        ),
        BlocListener<StatisticBloc, StatisticState>(
            listenWhen: (previous, current) =>
                previous.cancelScheduleStatus != current.cancelScheduleStatus,
            listener: (context, state) {
              _onCancelScheduleStatusChangeState(state);
            }),
      ],
      child: BlocBuilder<StatisticBloc, StatisticState>(
          bloc: _statisticBloc,
          builder: (context, state) {
            if (state.sendEmailState.status == ApiStatus.loading) {
              return CircularProgressIndicator();
            }
            final scheduleList = state.schedules;
            return SizedBox(
              width: double.infinity,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(spacing: AppSpacing.rem1000.h, children: [
                  CommonHeading(
                    heading: tr('Common.schedule_export'),
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
                        tr('Common.by_date'),
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.bold,
                            color: colors.primary),
                      ),
                      // Row(spacing: AppSpacing.rem600.w, children: [
                      //   CommonText(
                      //     "${tr('Common.date')}: ",
                      //     style: TextStyle(
                      //         fontSize: AppFontSize.xxxl,
                      //         fontWeight: AppFontWeight.semiBold),
                      //   ),
                      //   Column(
                      //     spacing: AppSpacing.rem300.h,
                      //     children: [
                      //       SizedBox(
                      //         width: AppSpacing.rem5000.w,
                      //         child: PickDateButton(
                      //           onDateSelected: (date) {
                      //             setState(() {
                      //               _selectedDate = date;
                      //             });
                      //           },
                      //         ),
                      //       ),
                      //       Row(
                      //         spacing: AppSpacing.rem600.w,
                      //         children: [
                      //           CommonText(
                      //             tr('Common.from'),
                      //           ),
                      //           SizedBox(
                      //             width: AppSpacing.rem3375.w,
                      //             child: PickTimeButton(
                      //               onTimeSelected: (time) {
                      //                 setState(() {
                      //                   _startTime = time;
                      //                 });
                      //               },
                      //             ),
                      //           ),
                      //           CommonText(
                      //             tr('Common.to'),
                      //           ),
                      //           SizedBox(
                      //             width: AppSpacing.rem3375.w,
                      //             child: PickTimeButton(
                      //               onTimeSelected: (time) {
                      //                 setState(() {
                      //                   _endTime = time;
                      //                 });
                      //               },
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      //   CommonPrimaryButton(
                      //       text: tr('Common.schedule'),
                      //       onPressed: _scheduleByDate)
                      // ]),
                      // ..._byDateList.map(
                      //   (date) =>
                      //       CommonText("${tr('Common.schedule_for')}: $date"),
                      // ),
                      // Divider(
                      //   color: colors.dividerColor,
                      // ),
                      Row(spacing: AppSpacing.rem600.w, children: [
                        CommonText(
                          "${tr('Common.date_range')}: ",
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
                            text: tr('Common.schedule'),
                            onPressed: _scheduleByDateRange)
                      ]),
                    ],
                  ),
                  Divider(
                    color: colors.dividerColor,
                  ),
                  CommonHeading(
                    heading: tr('Common.history_schedule'),
                    headingStyle: TextStyle(
                        fontSize: AppFontSize.lg,
                        fontWeight: AppFontWeight.bold,
                        color: colors.primary),
                  ),
                  ...scheduleList.map(
                    (schedule) => ListTile(
                      title: CommonText(
                        "${tr('Common.schedule_from')} ${schedule.dateFrom} ${tr('Common.to')} ${schedule.dateTo}",
                        style: TextStyle(
                            fontSize: AppFontSize.xxxl,
                            fontWeight: AppFontWeight.semiBold),
                      ),
                      subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            color: schedule.status == "cancelled"
                                ? colors.errorColor
                                : schedule.status == "scheduled"
                                    ? colors.primary
                                    : colors.successColor,
                            borderRadius: BorderRadius.circular(
                                AppBorderRadius.spacing2xl),
                          ),
                          margin: EdgeInsets.only(top: 4),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSpacing.rem150.w,
                            vertical: AppSpacing.rem100.h,
                          ),
                          child: CommonText(
                            schedule.status.toUpperCase(),
                            style: TextStyle(
                                color: colors.white,
                                fontSize: AppFontSize.xxxs),
                          ),
                        ),
                      ),
                      trailing: schedule.status == "scheduled"
                          ? CommonPrimaryButton(
                              text: tr('Common.cancel'),
                              onPressed: () {
                                _statisticBloc.add(CancelScheduleEvent(
                                    scheduleId: schedule.scheduleId));
                              })
                          : null,
                    ),
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   spacing: AppSpacing.rem300.w,
                  //   children: [
                  //     CommonText(
                  //       tr('Common.by_region_cam'),
                  //       style: TextStyle(
                  //           fontSize: AppFontSize.xxxl,
                  //           fontWeight: AppFontWeight.bold,
                  //           color: colors.primary),
                  //     ),
                  //     Row(spacing: AppSpacing.rem300.w, children: [
                  //       CommonText(
                  //         "${tr('Common.region')}: ",
                  //         style: TextStyle(
                  //             fontSize: AppFontSize.xxxl,
                  //             fontWeight: AppFontWeight.semiBold),
                  //       ),
                  //       Expanded(
                  //           child: SimpleDropdown(
                  //               itemsList:
                  //                   _cameraBloc.state.districts.map((option) {
                  //                 return DropdownMenuItem<String>(
                  //                   value: option,
                  //                   child: Text(option),
                  //                 );
                  //               }).toList(),
                  //               onChanged: (value) {
                  //                 setState(() {
                  //                   _selectedDistrict = value;
                  //                 });
                  //               })),
                  //       SizedBox(
                  //         width: AppSpacing.rem2350.w,
                  //         child: PickTimeButton(
                  //           onTimeSelected: (time) {
                  //             setState(() {
                  //               _startTimeDist = time;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: AppSpacing.rem2350.w,
                  //         child: PickTimeButton(
                  //           onTimeSelected: (time) {
                  //             setState(() {
                  //               _endTimeDist = time;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //       CommonPrimaryButton(
                  //           text: tr('Common.schedule'),
                  //           onPressed: _scheduleByDist)
                  //     ]),
                  //     ..._byDistList.map(
                  //       (dist) =>
                  //           CommonText("${tr('Common.schedule_for')}: $dist"),
                  //     ),
                  //     Divider(
                  //       color: colors.dividerColor,
                  //     ),
                  //     Row(spacing: AppSpacing.rem300.w, children: [
                  //       CommonText(
                  //         "${tr('Common.camera')}: ",
                  //         style: TextStyle(
                  //             fontSize: AppFontSize.xxxl,
                  //             fontWeight: AppFontWeight.semiBold),
                  //       ),
                  //       Expanded(
                  //           child: SimpleDropdown(
                  //               itemsList:
                  //                   _cameraBloc.state.cameras.map((option) {
                  //                 return DropdownMenuItem<String>(
                  //                   value: option.privateId,
                  //                   child: Text(option.name ?? ""),
                  //                 );
                  //               }).toList(),
                  //               onChanged: (value) {
                  //                 setState(() {
                  //                   _selectedCam = value;
                  //                 });
                  //               })),
                  //       CommonPrimaryButton(
                  //           text: tr('Common.schedule'),
                  //           onPressed: _scheduleByCam)
                  //     ]),
                  //     ..._byCamList.map(
                  //       (cam) =>
                  //           CommonText("${tr('Common.schedule_for')}: $cam"),
                  //     ),
                  //   ],
                  // )
                ]);
              }),
            );
          }),
    );
  }
}
