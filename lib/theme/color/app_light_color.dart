part of 'app_color.dart';

class AppLightColor implements IAppColor {
  const AppLightColor();

  @override
  Color get backgroundApp => Colors.white;

  @override
  Color get buttonPrimaryBackground => DextraAppColor.primary.brand600;

  @override
  Color get buttonSecondaryBackground => Colors.white;

  @override
  Color get textPrimaryColor => DextraAppColor.darkGrey.grey900;

  @override
  Color get textSecondaryColor => DextraAppColor.darkGrey.grey600;

  @override
  Color get backgroundDisable => DextraAppColor.darkGrey.grey200;

  @override
  Color get borderDisabledSubtle => DextraAppColor.border.borderDisabledSubtle;

  @override
  Color get borderSubtle => DextraAppColor.border.borderSubtle;

  @override
  Color get buttonPrimaryForeground =>
      DextraAppColor.buttons.buttonPrimaryForeground;

  @override
  Color get buttonSecondaryColorBackground => Colors.white;

  @override
  Color get buttonSecondaryColorBorder => DextraAppColor.primary.brand300;

  @override
  Color get buttonSecondaryColorForeground => DextraAppColor.primary.brand600;

  @override
  Color get foregroundDisabled => DextraAppColor.foreground.foregroundDisabled;

  @override
  Color get shadowXs => DextraAppColor.shadows.shadowXs;

  @override
  Color get exampleColor => DextraAppColor.primary.brand100;
  @override
  Color get cardBackground => DextraAppColor.primary.brand50;
  @override
  Color get cardDecorate => DextraAppColor.primary.brand800;
  @override
  Color get cardBackground2 => DextraAppColor.accentColors.accent50;
  @override
  Color get cardDecorate2 => DextraAppColor.accentColors.accent600;
}
