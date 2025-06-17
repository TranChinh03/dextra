import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/presentation/locale/localization.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simple_dropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralConfiguration extends StatefulWidget {
  const GeneralConfiguration({super.key});

  @override
  State<GeneralConfiguration> createState() => _GeneralConfigurationState();
}

class _GeneralConfigurationState extends State<GeneralConfiguration> {
  final _appthemeBloc = getIt.get<AppThemeBloc>();
  bool _isDarkMode =
      getIt.get<AppThemeBloc>().state.themeMode == ThemeMode.dark;
  String _language = Localization().currentLocale!.languageCode;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });

    final currentTheme = _appthemeBloc.state.themeMode;
    _appthemeBloc.add(
      ChangeAppTheme(
          themeMode: currentTheme == ThemeMode.dark
              ? ThemeMode.light
              : ThemeMode.dark),
    );
  }

  void _changeLanguage(String value) {
    setState(() {
      _language = value;
    });
    // Here you can add logic to change the app language
    Localization()
        .updateLocale(context, Locale(value, value == 'en' ? 'US' : 'VN'));
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

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
                child: SimpleDropdown(
                  value: _language,
                  itemsList: [
                    DropdownMenuItem(value: 'en', child: Text('English')),
                    DropdownMenuItem(value: 'vi', child: Text('Vietnamese')),
                  ],
                  onChanged: (value) => _changeLanguage(value),
                ),
              ),
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
                value: _isDarkMode,
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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     CommonText(
          //       "Date & Time Format",
          //       style: TextStyle(
          //           fontWeight: AppFontWeight.bold, fontSize: AppFontSize.xxxl),
          //     ),
          //     SizedBox(
          //       width: AppSpacing.rem4150.w,
          //       child: SimpleDropdown(itemsList: [
          //         DropdownMenuItem(
          //             value: '12h, DD/MM/YYYY', child: Text('12h, DD/MM/YYYY')),
          //         DropdownMenuItem(
          //             value: '24h, DD/MM/YYYY', child: Text('24h, DD/MM/YYYY')),
          //       ], onChanged: _updateTimeFormat),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
