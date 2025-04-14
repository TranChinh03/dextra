part of 'app_color.dart';

class AppDarkColor implements IAppColor {
  const AppDarkColor();

  @override
  Color get backgroundApp => DextraAppColor.darkGrey.grey950;

  @override
  Color get buttonPrimaryBackground => DextraAppColor.primary.brand600;

  @override
  Color get buttonSecondaryBackground => Colors.white;

  @override
  Color get textPrimaryColor => DextraAppColor.darkGrey.grey50;

  @override
  Color get textSecondaryColor => DextraAppColor.darkGrey.grey600;

  @override
  Color get backgroundDisable => DextraAppColor.darkGrey.grey800;

  @override
  Color get buttonSecondaryColorBackground => DextraAppColor.darkGrey.grey900;

  @override
  Color get borderDisabledSubtle => DextraAppColor.darkGrey.grey800;

  @override
  Color get shadowXs => DextraAppColor.shadows.shadowXs;

  @override
  Color get buttonPrimaryForeground =>
      DextraAppColor.buttons.buttonPrimaryForeground;

  @override
  Color get foregroundDisabled => DextraAppColor.darkGrey.grey500;

  @override
  Color get borderSubtle => DextraAppColor.border.borderSubtle;

  @override
  Color get buttonSecondaryColorBorder => DextraAppColor.darkGrey.grey700;

  @override
  Color get buttonSecondaryColorForeground => DextraAppColor.darkGrey.grey300;

  @override
  Color get exampleColor => DextraAppColor.goldenrod.goldenrod300;
  @override
  Color get cardBackground => DextraAppColor.primary.brand50;
  @override
  Color get cardDecorate => DextraAppColor.primary.brand800;
  @override
  Color get cardBackground2 => DextraAppColor.primary.brand50;
  @override
  Color get cardDecorate2 => DextraAppColor.primary.brand800;
  @override
  Color get primaryBannerBg => DextraAppColor.primary.brand25;

  @override
  Color get menuBackground => DextraAppColor.primary.brand400;

  @override
  Color get menuActiveTextColor => DextraAppColor.menu.activeText;

  @override
  Color get appBarTextHighlight => DextraAppColor.appBar.appBarTextHighlight;
  @override
  Color get liveBadgeTextColor => DextraAppColor.orangeDark.orangeDark600;
  @override
  Color get liveBadgeBgColor => DextraAppColor.error.error100;
}
