import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/camera.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/general.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/storage.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/tab_btn.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_secondary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/menu/menu.dart';
import 'package:dextra/theme/color/app_color.dart';
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
  final List<String> _tabsName = ['General', 'Camera', 'Storage'];
  final List<Widget> _tabs = [
    GeneralConfiguration(),
    CameraConfiguration(),
    StorageConfiguration()
  ];
  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
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
                  padding: EdgeInsets.symmetric(vertical: AppSpacing.rem300.h),
                  child: TabButton(
                    isActive: isSelected,
                    label: _tabsName[index],
                    onPressed: () {
                      setState(() {
                        _selectedTab = index;
                      });
                    },
                  ),
                );
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
