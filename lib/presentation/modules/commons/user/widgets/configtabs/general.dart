import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/general_setting.dart';
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/presentation/modules/commons/user/widgets/configtabs/camera.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralConfiguration extends StatefulWidget {
  const GeneralConfiguration({super.key});

  @override
  State<GeneralConfiguration> createState() => _GeneralConfigurationState();
}

class _GeneralConfigurationState extends State<GeneralConfiguration> {
  late AppSettings _settings;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeSettings();
  }

  Future<AppSettings> loadUserSettings() async {
    await Future.delayed(Duration(milliseconds: 500));
    return AppSettings(
      language: 'en',
      isDarkMode: false,
      format: "12h, DD/MM/YYYY",
    );
  }

  Future<void> _initializeSettings() async {
    final settings = await loadUserSettings();
    setState(() {
      _settings = settings;
      _isLoading = false;
    });
  }

  void _updateLanguage(String? newLang) {
    if (newLang != null) {
      setState(() {
        _settings.language = newLang;
      });
    }
  }

  void _toggleDarkMode(bool value) {
    setState(() {
      _settings.isDarkMode = value;
    });
    final appThemeBloc = getIt.get<AppThemeBloc>();

    final currentTheme = appThemeBloc.state.themeMode;
    appThemeBloc.add(
      ChangeAppTheme(
          themeMode: currentTheme == ThemeMode.dark
              ? ThemeMode.light
              : ThemeMode.dark),
    );
  }

  void _updateTimeFormat(String value) {
    setState(() {
      _settings.format = value;
    });
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
                "Language",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem2775.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(value: 'en', child: Text('English')),
                  DropdownMenuItem(value: 'vi', child: Text('Vietnamese')),
                ], onChanged: _updateLanguage),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Darkmode",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              Switch(
                value: _settings.isDarkMode,
                activeColor: colors.buttonPrimaryBackground,
                inactiveThumbColor: colors.buttonPrimaryBackground,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  return colors.buttonPrimaryBackground.withValues(alpha: .48);
                }),
                onChanged: _toggleDarkMode,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                "Date & Time Format",
                style: TextStyle(
                    fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
              ),
              SizedBox(
                width: AppSpacing.rem4150.w,
                child: SimpleDropdown(itemsList: [
                  DropdownMenuItem(
                      value: '12h, DD/MM/YYYY', child: Text('12h, DD/MM/YYYY')),
                  DropdownMenuItem(
                      value: '24h, DD/MM/YYYY', child: Text('24h, DD/MM/YYYY')),
                ], onChanged: _updateTimeFormat),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
