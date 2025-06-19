part of 'app_color.dart';

class AppLightColor implements IAppColor {
  const AppLightColor();

  // Background Colors
  @override
  Color get backgroundApp => Colors.white;
  @override
  Color get backgroundDisable => DextraAppColor.darkGrey.grey200;
  @override
  Color get primaryBannerBg => DextraAppColor.primary.brand25;
  @override
  Color get menuBackground => DextraAppColor.primary.brand400;

  // Card Colors
  @override
  Color get cardCameraBackground => Colors.white;
  @override
  Color get cardBackground => DextraAppColor.primary.brand50;
  @override
  Color get cardBackground2 => DextraAppColor.accentColors.accent50;

  // Button Colors
  @override
  Color get buttonPrimaryBackground => DextraAppColor.primary.brand400;
  @override
  Color get buttonSecondaryBackground => Colors.white;
  @override
  Color get buttonSecondaryColorBackground => Colors.white;
  @override
  Color get buttonPrimaryForeground =>
      DextraAppColor.buttons.buttonPrimaryForeground;
  @override
  Color get buttonSecondaryColorBorder => DextraAppColor.primary.brand300;
  @override
  Color get buttonSecondaryColorForeground => DextraAppColor.primary.brand600;
  @override
  Color get menuButtonBackground => DextraAppColor.primary.brand600;

  // Text Colors
  @override
  Color get textPrimary => DextraAppColor.darkGrey.grey900;
  @override
  Color get textMuted => DextraAppColor.darkGrey.grey600;
  @override
  Color get menuActiveTextColor => DextraAppColor.menu.activeText;

  // Badge Colors
  @override
  Color get liveBadgeTextColor => DextraAppColor.orangeDark.orangeDark600;
  @override
  Color get liveBadgeBgColor => DextraAppColor.error.error50;

  // Border Colors
  @override
  Color get borderDisabledSubtle => DextraAppColor.border.borderDisabledSubtle;
  @override
  Color get borderSubtle => DextraAppColor.border.borderSubtle;

  // Shadow Colors
  @override
  Color get shadowXs => DextraAppColor.shadows.shadowXs;

  // Divider Colors
  @override
  Color get dividerColor => DextraAppColor.divider.dividerColor;

  // Foreground Colors
  @override
  Color get foregroundDisabled => DextraAppColor.foreground.foregroundDisabled;

  // Card Decoration Colors
  @override
  Color get cardDecorate => DextraAppColor.primary.brand800;
  @override
  Color get cardDecorate2 => DextraAppColor.accentColors.accent600;

  // Menu Colors
  @override
  Color get menuTextColor => Colors.white;

  // Miscellaneous Colors
  @override
  Color get exampleColor => DextraAppColor.primary.brand100;
  @override
  Color get white => Colors.white;
  @override
  Color get black => Colors.black;
  @override
  Color get primary => DextraAppColor.primary.brand600;
  //Noti
  @override
  Color get successColor => DextraAppColor.success.success600;
  @override
  Color get errorColor => DextraAppColor.error.error600;
  @override
  Color get warningColor => DextraAppColor.warning.warning600;
}
