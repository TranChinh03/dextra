import 'package:dextra/presentation/modules/commons/user/widgets/statistic/export_tab.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/schedule_tab.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticWidget extends StatefulWidget {
  const StatisticWidget({super.key});

  @override
  State<StatisticWidget> createState() => _StatisticWidgetState();
}

class _StatisticWidgetState extends State<StatisticWidget> {
  int _selectedTab = 0;

  final List<Widget> _tabs = [ExportTab(), ScheduleTab()];
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.rem600.w,
            vertical: AppSpacing.rem600.h,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonPrimaryButton(
                    text: tr('Common.export_report'),
                    onPressed: () {
                      setState(() {
                        _selectedTab = 0;
                      });
                    },
                  ),
                  SizedBox(
                    width: AppSpacing.rem600.w,
                  ),
                  CommonSecondaryButton(
                    text: tr('Common.export_report'),
                    onPressed: () {
                      setState(() {
                        _selectedTab = 1;
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: AppSpacing.rem600.h),
              IndexedStack(
                index: _selectedTab,
                children: _tabs,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
