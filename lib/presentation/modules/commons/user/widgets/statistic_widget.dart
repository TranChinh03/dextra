import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/statistic/statistic_bloc.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/detect_tab.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/export_tab.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/statistic/schedule_tab.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_back_to_to_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticWidget extends StatefulWidget {
  const StatisticWidget({super.key});

  @override
  State<StatisticWidget> createState() => _StatisticWidgetState();
}

class _StatisticWidgetState extends State<StatisticWidget> {
  int _selectedTab = 1;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final List<Widget> _tabs = [ExportTab(), ScheduleTab(), DetectTab()];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticBloc, StatisticState>(
        builder: (context, state) {
      return ScreenContainer(
        isShowLoading: state.apiStatus == ApiStatus.loading,
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: _scrollController,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.rem600.w,
                  vertical: AppSpacing.rem600.h,
                ),
                child: Column(
                  children: [
                    Row(
                      spacing: AppSpacing.rem600.w,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _selectedTab == 0
                            ? CommonPrimaryButton(
                                text: tr('Common.export_report'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 0;
                                  });
                                },
                              )
                            : CommonSecondaryButton(
                                text: tr('Common.export_report'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 0;
                                  });
                                },
                              ),
                        _selectedTab == 1
                            ? CommonPrimaryButton(
                                text: tr('Common.schedule_report'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 1;
                                  });
                                },
                              )
                            : CommonSecondaryButton(
                                text: tr('Common.schedule_report'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 1;
                                  });
                                },
                              ),
                        _selectedTab == 2
                            ? CommonPrimaryButton(
                                text: tr('Common.detect'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 2;
                                  });
                                },
                              )
                            : CommonSecondaryButton(
                                text: tr('Common.detect'),
                                onPressed: () {
                                  setState(() {
                                    _selectedTab = 2;
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
              Positioned(
                  bottom: AppSpacing.rem800.h,
                  right: AppSpacing.rem800.h,
                  child: CommonBackToTopButton(
                      scrollController: _scrollController))
            ],
          ),
        ),
      );
    });
  }
}
