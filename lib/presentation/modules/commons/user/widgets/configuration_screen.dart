import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/camera.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/general.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/storage.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigurationWidget extends StatefulWidget {
  const ConfigurationWidget({super.key});

  @override
  State<ConfigurationWidget> createState() => _ConfigurationWidgetState();
}

class _ConfigurationWidgetState extends State<ConfigurationWidget> {
  int _selectedTab = 0;
  final List<String> _tabsName = [
    tr('Common.general'),
    tr('Common.camera'),
    tr('Common.storage')
  ];
  final List<Widget> _tabs = [
    GeneralConfiguration(),
    CameraConfiguration(),
    StorageConfiguration()
  ];
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Scaffold(
      backgroundColor: colors.backgroundApp,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.rem600.w,
          vertical: AppSpacing.rem600.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: AppSpacing.rem1200.w),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: colors.buttonSecondaryColorForeground,
                    width: AppSpacing.rem050.w,
                  ),
                ),
              ),
              child: Column(
                  children: List.generate(_tabsName.length, (index) {
                final isSelected = index == _selectedTab;
                return Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppSpacing.rem300.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppSpacing.rem175.h,
                          horizontal: AppSpacing.rem500.w),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppBorderRadius.spacing4xl),
                          color: isSelected
                              ? colors.primaryBannerBg
                              : Colors.transparent),
                      child: InkWell(
                        onTap: () => setState(() {
                          _selectedTab = index;
                        }),
                        child: CommonText(
                          _tabsName[index],
                          style: TextStyle(
                              fontWeight: AppFontWeight.bold,
                              color: colors.buttonSecondaryColorForeground),
                        ),
                      ),
                    ));
              })),
            ),
            Expanded(
              child: IndexedStack(
                alignment: AlignmentDirectional.center,
                index: _selectedTab,
                children: _tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
