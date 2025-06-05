import 'package:dextra/presentation/app/blocs/theme/app_theme_bloc.dart';
import 'package:dextra/theme/color/colors_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'app_light_color.dart';
part 'app_dark_color.dart';

abstract class IAppColor {
  Color get backgroundApp;
  Color get backgroundDisable;

  Color get primary;

// Button color
  Color get buttonSecondaryColorBackground;
  Color get buttonSecondaryColorBorder;
  Color get buttonPrimaryForeground;
  Color get buttonSecondaryColorForeground;
  Color get foregroundDisabled;
  Color get buttonPrimaryBackground;
  Color get buttonSecondaryBackground;

  Color get borderSubtle;
  Color get borderDisabledSubtle;

  Color get menuButtonBackground;

// Text color

  Color get textPrimary;
  Color get textMuted;

  // Shadow color
  Color get shadowXs;

  //card
  Color get cardBackground;
  Color get cardDecorate;
  Color get cardBackground2;
  Color get cardDecorate2;

  Color get cardCameraBackground;

  //banner
  Color get primaryBannerBg;

  //
  Color get exampleColor;

  // menu
  Color get menuBackground;
  Color get menuActiveTextColor;
  Color get menuTextColor;

  //badge
  Color get liveBadgeTextColor;
  Color get liveBadgeBgColor;

  // Fixed color
  Color get white;
  Color get black;

  //border divider
  Color get dividerColor;

  static IAppColor watch(BuildContext context) =>
      context.watch<AppThemeBloc>().state.appColor;
}
