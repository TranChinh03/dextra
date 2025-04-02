import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/theme/color/colors_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'app_light_color.dart';
part 'app_dark_color.dart';

abstract class IAppColor {
  Color get backgroundApp;
  Color get backgroundDisable;

// Button color
  Color get buttonSecondaryColorBackground;
  Color get buttonSecondaryColorBorder;
  Color get buttonPrimaryForeground;
  Color get buttonSecondaryColorForeground;
  Color get foregroundDisabled;
  Color get buttonPrimaryBackground;
  Color get buttonSecondaryBackground;

  Color get textPrimaryColor;
  Color get textSecondaryColor;

  Color get borderSubtle;
  Color get borderDisabledSubtle;

   // Shadow color
  Color get shadowXs;

  //
  Color get exampleColor;


  static IAppColor watch(BuildContext context) =>
      context.watch<AppThemeBloc>().state.appColor;
}
