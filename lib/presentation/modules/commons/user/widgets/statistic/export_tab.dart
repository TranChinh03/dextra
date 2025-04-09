import 'package:dextra/presentation/modules/commons/widgets/card/common_statistic_card.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ExportTab extends StatefulWidget {
  const ExportTab({super.key});

  @override
  State<ExportTab> createState() => _ExportTabState();
}

class _ExportTabState extends State<ExportTab> {
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

  String _selectedCam = 'Phan Dang Luu - Dinh Tien Hoang 2';
  String _selectedOption = 'Last 7 days';
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _pickDate(BuildContext context, bool isStart) async {
    final initialDate =
        isStart ? _startDate ?? DateTime.now() : _endDate ?? DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (newDate != null) {
      setState(() {
        if (isStart) {
          _startDate = newDate;
        } else {
          _endDate = newDate;
        }
      });
    }
  }

  String _formatDate(DateTime? date) {
    return date == null
        ? 'Select Date'
        : DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return SizedBox(
      width: double.infinity,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown
            SizedBox(
              width: constraints.maxWidth * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CommonText(
                        "Date range",
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
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.rem500,
                                vertical: AppSpacing.rem250),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(AppSpacing.rem350.w),
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

                  // Show pickers if custom
                  if (_selectedOption == 'Custom') ...[
                    Container(
                      padding: EdgeInsets.only(top: AppSpacing.rem250.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => _pickDate(context, true),
                              child: CommonText(
                                'Start: ${_formatDate(_startDate)}',
                                style: TextStyle(fontSize: AppFontSize.xs),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => _pickDate(context, false),
                              child: CommonText(
                                'End: ${_formatDate(_endDate)}',
                                style: TextStyle(fontSize: AppFontSize.xs),
                              ),
                            ),
                          ),
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
                        "Area",
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
                              borderRadius:
                                  BorderRadius.circular(AppSpacing.rem350.w),
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
          ],
        );
      }),
    );
  }
}
