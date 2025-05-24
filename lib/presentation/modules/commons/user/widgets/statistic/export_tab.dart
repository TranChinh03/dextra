import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/bar_chart_sample1.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/bar_chart_sample3.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/line_chart_sample.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/pie_chart_sample.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/charts/pie_chart_sample1.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/date_time_picker.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/map/heatmap.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
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
import 'package:intl/intl.dart';

class ExportTab extends StatefulWidget {
  const ExportTab({super.key});

  @override
  State<ExportTab> createState() => _ExportTabState();
}

class _ExportTabState extends State<ExportTab> {
  final _cameraBloc = getIt.get<CameraBloc>();

  final List<String> _options = [
    'Last 7 days',
    'Last week',
    'Last month',
    'Custom',
  ];
  final List<String> _cams = [
    'Phan Dang Luu - Dinh Tien Hoang 2',
    'Vo Nguyen Giap - Thao Dien',
    'Ly Tu Trong - Chu Manh Trinh',
    'Dang Thuc Vinh - Trinh Thi Mieng',
  ];

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

  String _selectedCam = 'Phan Dang Luu - Dinh Tien Hoang 2';
  String _selectedVehicle = 'bicycle';
  String _selectedDistrict = 'District 1';
  String _selectedOption = 'Last 7 days';
  DateTime? _startDate;
  DateTime? _endDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  bool _isTimeEnable = false;

  @override
  void initState() {
    super.initState();
    _onFetchVehicles();
  }

  Future<void> _pickDate(BuildContext context, bool isStart) async {
    final current = DateTime.now();
    final initialDate =
        isStart ? (_startDate ?? current) : (_endDate ?? current);

    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (newDate == null) return;

    final isInvalidStart = isStart &&
        _endDate != null &&
        !newDate.isBefore(_endDate!) &&
        _endDate != newDate;
    final isInvalidEnd = !isStart &&
        _startDate != null &&
        !newDate.isAfter(_startDate!) &&
        _startDate != newDate;

    if (isInvalidStart || isInvalidEnd) {
      final errorMessage = isStart
          ? tr('Common.start_date_after_end_date')
          : tr('Common.end_date_before_start_date');

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: CommonText(tr("Common.invalid_date_range")),
          content: CommonText(errorMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: CommonText(tr("Common.ok")),
            ),
          ],
        ),
      );
      return;
    }

    setState(() {
      isStart ? _startDate = newDate : _endDate = newDate;
    });
    if (_startDate == _endDate && _startDate != null) {
      setState(() {
        _isTimeEnable = true;
      });
    } else {
      setState(() {
        _isTimeEnable = false;
      });
    }
  }

  Future<void> _pickTime(bool isStart) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return tr('Common.select_time');

    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('HH:mm').format(dt);
  }

  void _onFetchVehicles() {
    if (_cameraBloc.state.vehicles.isNotEmpty) {
      return;
    }
    _cameraBloc.add(FetchVehiclesEvent());
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
      return SizedBox(
        width: double.infinity,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dropdown
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSpacing.rem300.w),
                    width: constraints.maxWidth * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CommonText(
                              tr('Common.date_range'),
                              style: TextStyle(
                                  fontSize: AppFontSize.xxxl,
                                  fontWeight: AppFontWeight.semiBold),
                            ),
                            SizedBox(
                              width: AppSpacing.rem200.h,
                            ),
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                iconEnabledColor: colors.menuActiveTextColor,
                                style: TextStyle(
                                    color: colors.menuActiveTextColor,
                                    fontWeight: AppFontWeight.regular,
                                    fontSize: AppFontSize.xxl),
                                decoration: InputDecoration(
                                  fillColor: colors.primaryBannerBg,
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: AppSpacing.rem500.w,
                                      vertical: AppSpacing.rem250.w),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        AppSpacing.rem350.w),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                value: _selectedOption,
                                items: _options.map((option) {
                                  return DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        if (_selectedOption == tr('Common.custom')) ...[
                          Container(
                            padding: EdgeInsets.only(top: AppSpacing.rem250.h),
                            child: Row(
                              children: [
                                Expanded(
                                    child: DateTimePicker(
                                  label: tr("Common.start"),
                                  onPressed: () => _pickDate(context, true),
                                  date: _startDate,
                                  isDate: true,
                                )),
                                const SizedBox(width: 12),
                                Expanded(
                                    child: DateTimePicker(
                                  label: tr("Common.end"),
                                  onPressed: () => _pickDate(context, false),
                                  date: _endDate,
                                  isDate: true,
                                )),
                              ],
                            ),
                          )
                        ],
                        SizedBox(
                          height: AppSpacing.rem300.h,
                        ),
                        Row(
                          children: [
                            CommonText(
                              tr('Common.area'),
                              style: TextStyle(
                                  fontSize: AppFontSize.xxxl,
                                  fontWeight: AppFontWeight.semiBold),
                            ),
                            SizedBox(
                              width: AppSpacing.rem200.w,
                            ),
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                iconEnabledColor: colors.menuActiveTextColor,
                                style: TextStyle(
                                    color: colors.menuActiveTextColor,
                                    fontWeight: AppFontWeight.regular,
                                    fontSize: AppFontSize.xxl,
                                    overflow: TextOverflow.ellipsis),
                                decoration: InputDecoration(
                                  fillColor: colors.primaryBannerBg,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: AppSpacing.rem500,
                                      vertical: AppSpacing.rem250),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        AppSpacing.rem350.w),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                value: _selectedCam,
                                items: _cams.map((option) {
                                  return DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppSpacing.rem300.h,
                        ),
                        CommonStatisticCard(
                          label: tr('Common.vehicles_count_label'),
                          value: tr('Common.default_count_value'),
                          info: tr('Common.compare_yesterday_label') +
                              tr('Common.default_compare_yesterda_value'),
                          textColor: colors.buttonPrimaryBackground,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: AppSpacing.rem300.w),
                      width: constraints.maxWidth * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonText(
                                tr('Common.time_range'),
                                style: TextStyle(
                                    fontSize: AppFontSize.xxxl,
                                    fontWeight: AppFontWeight.semiBold),
                              ),
                              SizedBox(
                                width: AppSpacing.rem200.w,
                              ),
                              ElevatedButton(
                                onPressed: _isTimeEnable
                                    ? () => _pickTime(true)
                                    : null,
                                child: CommonText(
                                  '${tr('Common.start')}: ${_formatTime(_startTime)}',
                                  style: TextStyle(fontSize: AppFontSize.xs),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _isTimeEnable
                                    ? () => _pickTime(false)
                                    : null,
                                child: CommonText(
                                  '${tr('Common.end')}: ${_formatTime(_endTime)}',
                                  style: TextStyle(fontSize: AppFontSize.xs),
                                ),
                              )
                            ],
                          ),
                          CommonText(
                            tr('Common.time_range_info'),
                            style: TextStyle(
                                fontSize: AppFontSize.xxs,
                                color: colors.textMuted),
                          ),
                          SizedBox(
                            height: AppSpacing.rem300.h,
                          ),
                          Row(
                            children: [
                              CommonText(
                                tr('Common.vehicle'),
                                style: TextStyle(
                                    fontSize: AppFontSize.xxxl,
                                    fontWeight: AppFontWeight.semiBold),
                              ),
                              SizedBox(
                                width: AppSpacing.rem200.w,
                              ),
                              Expanded(
                                child: DropdownButtonFormField<String>(
                                  iconEnabledColor: colors.menuActiveTextColor,
                                  style: TextStyle(
                                      color: colors.menuActiveTextColor,
                                      fontWeight: AppFontWeight.regular,
                                      fontSize: AppFontSize.xxl,
                                      overflow: TextOverflow.ellipsis),
                                  decoration: InputDecoration(
                                    fillColor: colors.primaryBannerBg,
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: AppSpacing.rem500,
                                        vertical: AppSpacing.rem250),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppSpacing.rem350.w),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  value: _selectedVehicle,
                                  items:
                                      _cameraBloc.state.vehicles.map((option) {
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(option),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSpacing.rem300.h,
                          ),
                          CommonStatisticCard(
                            label: tr('Common.avg_congestion_label'),
                            value: tr('Common.default_avg_congestion'),
                            info: tr('Common.peak_congestion_label') +
                                tr('Common.default_peak_congestion_value'),
                            background: colors.cardBackground2,
                            decoration: colors.cardDecorate2,
                          ),
                        ],
                      ))
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                  height: AppSpacing.rem8975.h,
                  width: double.infinity,
                  color: colors.primaryBannerBg,
                  child: TrafficHeatmap()),
              Center(
                child: SizedBox(
                    height: AppSpacing.rem8975.h,
                    width: AppSpacing.rem9999.w,
                    child: LineChartSample1()),
              ),
              SizedBox(
                height: AppSpacing.rem600.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: AppSpacing.rem5000.h,
                      width: AppSpacing.rem6250.w,
                      child: PieChartSample2()),
                  Container(
                      color: colors.primaryBannerBg,
                      height: AppSpacing.rem6250.h,
                      width: AppSpacing.rem6250.w,
                      child: BarChartSample1())
                ],
              ),
              Center(
                child: CommonHeading(
                  heading: tr('Common.overview'),
                ),
              ),
              Center(
                child: SizedBox(
                    height: AppSpacing.rem6250.h,
                    width: AppSpacing.rem9999.w,
                    child: BarChartSample3()),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.rem600.h),
                child: SizedBox(
                  width: AppSpacing.rem3875.w,
                  child: DropdownButtonFormField<String>(
                    iconEnabledColor: colors.menuActiveTextColor,
                    style: TextStyle(
                        color: colors.menuActiveTextColor,
                        fontWeight: AppFontWeight.regular,
                        fontSize: AppFontSize.xxl,
                        overflow: TextOverflow.ellipsis),
                    decoration: InputDecoration(
                      fillColor: colors.primaryBannerBg,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.rem500,
                          vertical: AppSpacing.rem250),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppSpacing.rem350.w),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: _selectedDistrict,
                    items: _districts.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: AppSpacing.rem5000.h,
                      width: AppSpacing.rem6250.w,
                      child: PieChartSample1()),
                  Column(
                    children: [
                      CommonStatisticCard(
                        label: tr('Common.vehicles_count_label'),
                        value: tr('Common.default_count_value'),
                        info: tr('Common.compare_yesterday_label') +
                            tr('Common.default_compare_yesterda_value'),
                        textColor: colors.buttonPrimaryBackground,
                      ),
                      SizedBox(
                        height: AppSpacing.rem600,
                      ),
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
                ],
              )
            ],
          );
        }),
      );
    });
  }
}
