import 'package:dextra/domain/entities/storage_setting.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StorageConfiguration extends StatefulWidget {
  const StorageConfiguration({super.key});

  @override
  State<StorageConfiguration> createState() => _StorageConfigurationState();
}

class _StorageConfigurationState extends State<StorageConfiguration> {
  Future<StorageSetting> loadUserSettings() async {
    await Future.delayed(Duration(milliseconds: 500));
    return StorageSetting(
      format: 'pdf',
      duration: "7",
      isSync: false,
    );
  }

  late StorageSetting _settings;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeSettings();
  }

  Future<void> _initializeSettings() async {
    final settings = await loadUserSettings();
    setState(() {
      _settings = settings;
      _isLoading = false;
    });
  }

  void _updateFormat(String? value) {
    if (value != null) {
      setState(() {
        _settings.format = value;
      });
    }
  }

  void _updatDuration(String? value) {
    if (value != null) {
      setState(() {
        _settings.duration = value;
      });
    }
  }

  void _updateIsSync(bool? value) {
    if (value != null) {
      setState(() {
        _settings.isSync = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    if (_isLoading) return Center(child: CircularProgressIndicator());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.rem600.w),
      child: Column(
        spacing: AppSpacing.rem600.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Export format",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem2775.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(value: 'pdf', child: Text('PDF')),
                  DropdownMenuItem(value: 'xlsx', child: Text('XLSX')),
                  DropdownMenuItem(value: 'jpg', child: Text('JPG')),
                ], onChanged: _updateFormat),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Storage Duration",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem2775.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(value: '3', child: Text('3 days')),
                  DropdownMenuItem(value: '7', child: Text('7 days')),
                  DropdownMenuItem(value: '14', child: Text('14 days')),
                ], onChanged: _updatDuration),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Cloud Sync",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              Switch(
                value: _settings.isSync,
                activeColor: colors.buttonPrimaryBackground,
                inactiveThumbColor: colors.buttonPrimaryBackground,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  return colors.buttonPrimaryBackground.withValues(alpha: .48);
                }),
                onChanged: _updateIsSync,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
