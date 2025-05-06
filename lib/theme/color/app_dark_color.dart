part of 'app_color.dart';

class AppDarkColor implements IAppColor {
  const AppDarkColor();

  // Background Colors
  @override
  Color get backgroundApp => DextraAppColor.darkmode.dark600;
  @override
  Color get backgroundDisable => DextraAppColor.darkGrey.grey800;

  @override
  Color get primaryBannerBg => DextraAppColor.darkmode.dark400;
  @override
  Color get menuBackground => DextraAppColor.darkmode.dark500;

  // Card Colors
  @override
  Color get cardCameraBackground => DextraAppColor.darkmode.dark500;
  @override
  Color get cardBackground => DextraAppColor.darkmode.dark400;
  @override
  Color get cardBackground2 => DextraAppColor.accentColors.accentDark;
  @override
  Color get cardDecorate => DextraAppColor.primary.brand800;
  @override
  Color get cardDecorate2 => DextraAppColor.accentColors.accent50;

  // Button Colors
  @override
  Color get buttonPrimaryBackground => DextraAppColor.primary.brand600;
  @override
  Color get buttonSecondaryBackground => DextraAppColor.darkmode.dark400;
  @override
  Color get buttonSecondaryColorBackground => DextraAppColor.darkGrey.grey900;
  @override
  Color get buttonPrimaryForeground =>
      DextraAppColor.buttons.buttonPrimaryForeground;
  @override
  Color get buttonSecondaryColorBorder => DextraAppColor.darkGrey.grey700;
  @override
  Color get buttonSecondaryColorForeground => DextraAppColor.darkGrey.grey300;
  @override
  Color get menuButtonBackground => DextraAppColor.darkmode.dark400;

  // Text Colors
  @override
  Color get textPrimary => Colors.white;
  @override
  @override
  Color get textMuted => DextraAppColor.darkmode.dark25;
  @override
  Color get menuActiveTextColor => DextraAppColor.menu.activeText;
  @override
  Color get appBarTextHighlight => DextraAppColor.appBar.appBarTextHighlight;
  @override
  Color get liveBadgeTextColor => DextraAppColor.orangeDark.orangeDark600;

  // Border Colors
  @override
  Color get borderDisabledSubtle => DextraAppColor.darkGrey.grey800;
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
  Color get foregroundDisabled => DextraAppColor.darkGrey.grey500;

  // Badge Colors
  @override
  Color get liveBadgeBgColor => DextraAppColor.error.error100;

  // Menu Colors
  @override
  Color get menuTextColor => Colors.white;

  // Miscellaneous Colors
  @override
  Color get exampleColor => DextraAppColor.goldenrod.goldenrod300;
  @override
  Color get white => Colors.white;
  @override
  Color get black => Colors.black;
}
