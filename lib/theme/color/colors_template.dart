import 'package:flutter/material.dart';

// class PrimaryColors {
//   final Color brand25 = const Color(0xFFF5EBFC);
//   final Color brand50 = const Color(0xFFF2E6FB);
//   final Color brand100 = const Color(0xFFD7B0F3);
//   final Color brand200 = const Color(0xFFC38AED);
//   final Color brand300 = const Color(0xFFA854E4);
//   final Color brand400 = const Color(0xFF9733DF);
//   final Color brand500 = const Color(0xFF7D00D7);
//   final Color brand600 = const Color(0xFF7200C4);
//   final Color brand700 = const Color(0xFF590099);
//   final Color brand800 = const Color(0xFF450076);
//   final Color brand900 = const Color(0xFF35005A);
//   final Color brand950 = const Color(0xFF2A0048);
//   final LinearGradient primaryGradient = LinearGradient(
//     colors: [
//       Color(0xFF2AC4FD), // Light Blue
//       Color(0xFF7D00D7), // Dark Purple
//       Color(0xFFC600CC), // Magenta
//       Color(0xFFFFA525), // Orange
//     ],
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//   );
// }
class PrimaryColors {
  final Color brand25 = const Color(0xFFD9F0FF); // Alice Blue
  final Color brand50 = const Color(0xFFCBF0FD); // Columbia Blue
  final Color brand100 = const Color(0xFFB6E2FD); // Uranian Blue
  final Color brand200 = const Color(0xFFA0D3FC); // Light Sky Blue
  final Color brand300 = const Color(0xFF8BC4FC); // Jordy Blue
  final Color brand400 = const Color(0xFF75B5FB); // Argentinian Blue
  final Color brand500 = const Color(0xFF5C9FE7); // Blue Gray
  final Color brand600 = const Color(0xFF4389D3); // Tufts Blue
  final Color brand700 = const Color(0xFF2868BA); // True Blue
  final Color brand800 = const Color(0xFF0D47A1); // Cobalt Blue
  final Color brand1000 = const Color(0xFF1B3763); // Cobalt Blue
}

class DarkModeColors {
  final Color dark25 = const Color(0xFFc4c4c4);
  final Color dark50 = const Color(0xFF2A2E3B);
  final Color dark100 = const Color(0xFF3A3F4B);
  final Color dark200 = const Color(0xFF4A4F5B);
  final Color dark300 = const Color(0xFF5A5F6B);
  final Color dark400 = const Color(0xFF26313f);
  final Color dark500 = const Color(0xFF1f2123);
  final Color dark600 = const Color(0xFF121212);
  final Color dark700 = const Color(0xFF9A9FAB);
  final Color dark800 = const Color(0xFFAAB0BB);
}

class AccentColors {
  final Color accent25 = const Color(0xFFFFF3D4); // Light Yellow
  final Color accent50 = const Color(0xFFFCF5CC); // Pale Goldenrod
  final Color accent100 = const Color(0xFFFFC533); // Mustard Yellow
  final Color accent200 = const Color(0xFFFFB121); // Orange Yellow
  final Color accent300 = const Color(0xFFFF9F00); // Vivid Orange
  final Color accent400 = const Color(0xFFFB8C00); // Darker Orange
  final Color accent500 = const Color(0xFFF57C00); // Deep Orange
  final Color accent600 = const Color(0xFFEF6C00); // Strong Orange
  final Color accent700 = const Color(0xFFE65100); // Burnt Orange
  final Color accent800 = const Color(0xFFBF360C); // Deep Amber
  final Color accentDark = const Color(0xFF585649); // Deep Amber
}

class ModernGreyColors {
  final Color grey25 = const Color(0xFFFCFCFD);
  final Color grey50 = const Color(0xFFF8FAFC);
  final Color grey100 = const Color(0xFFEEF2F6);
  final Color grey200 = const Color(0xFFE3E8EF);
  final Color grey300 = const Color(0xFFCDD5DF);
  final Color grey400 = const Color(0xFF9AA4B2);
  final Color grey500 = const Color(0xFF697586);
  final Color grey600 = const Color(0xFF7589a2);
  final Color grey700 = const Color(0xFF364152);
  final Color grey800 = const Color(0xFF202939);
  final Color grey900 = const Color(0xFF121926);
  final Color grey950 = const Color(0xFF0D121C);
}

class DarkGreyColors {
  final Color grey25 = const Color(0xFFFAFAFA);
  final Color grey50 = const Color(0xFFF5F5F6);
  final Color grey100 = const Color(0xFFF0F1F1);
  final Color grey200 = const Color(0xFFECECED);
  final Color grey300 = const Color(0xFFCECFD2);
  final Color grey400 = const Color(0xFF94969C);
  final Color grey500 = const Color(0xFF85888E);
  final Color grey600 = const Color(0xFF61646C);
  final Color grey700 = const Color(0xFF333741);
  final Color grey800 = const Color(0xFF1F242F);
  final Color grey900 = const Color(0xFF161B26);
  final Color grey950 = const Color(0xFF0C111D);
}

class ErrorColors {
  final Color error25 = const Color(0xFFFDF1F1);
  final Color error50 = const Color(0xFFFCEDED);
  final Color error100 = const Color(0xFFF6C6C7);
  final Color error200 = const Color(0xFFF2ABAC);
  final Color error300 = const Color(0xFFEC8486);
  final Color error400 = const Color(0xFFE86D6E);
  final Color error500 = const Color(0xFFE2484A);
  final Color error600 = const Color(0xFFCE4243);
  final Color error700 = const Color(0xFFA03335);
  final Color error800 = const Color(0xFF7C2829);
  final Color error900 = const Color(0xFF5F1E1F);
  final Color error950 = const Color(0xFF4C1819);
}

class SuccessColors {
  final Color success25 = const Color(0xFFECF9F7);
  final Color success50 = const Color(0xFFE7F8F5);
  final Color success100 = const Color(0xFFB6E8DE);
  final Color success200 = const Color(0xFF92DDCF);
  final Color success300 = const Color(0xFF60CEB9);
  final Color success400 = const Color(0xFF41C5AB);
  final Color success500 = const Color(0xFF12B696);
  final Color success600 = const Color(0xFF10A689);
  final Color success700 = const Color(0xFF0D816B);
  final Color success800 = const Color(0xFF0A6453);
  final Color success900 = const Color(0xFF084C3F);
  final Color success950 = const Color(0xFF063D32);
}

class WarningColors {
  final Color warning25 = const Color(0xFFFFFAF1);
  final Color warning50 = const Color(0xFFFFF9EE);
  final Color warning100 = const Color(0xFFFEEBC9);
  final Color warning200 = const Color(0xFFFDE1AF);
  final Color warning300 = const Color(0xFFFCD38A);
  final Color warning400 = const Color(0xFFFCCB73);
  final Color warning500 = const Color(0xFFFBBE50);
  final Color warning600 = const Color(0xFFE4AD49);
  final Color warning700 = const Color(0xFFB28739);
  final Color warning800 = const Color(0xFF8A692C);
  final Color warning900 = const Color(0xFF695022);
  final Color warning950 = const Color(0xFF54401B);
}

class SkyBlue {
  final Color skyBlue25 = const Color(0xFFF0F5FD);
  final Color skyBlue50 = const Color(0xFFE1EAFB);
  final Color skyBlue100 = const Color(0xFFC4D7F7);
  final Color skyBlue200 = const Color(0xFFA8C1F3);
  final Color skyBlue300 = const Color(0xFF88A9F0);
  final Color skyBlue400 = const Color(0xFF6E94ED);
  final Color skyBlue500 = const Color(0xFF75B5FB);
  final Color skyBlue600 = const Color(0xFF4472D7);
  final Color skyBlue700 = const Color(0xFF3A5FB4);
  final Color skyBlue800 = const Color(0xFF314A91);
  final Color skyBlue900 = const Color(0xFF2A3C6D);
  final Color skyBlue950 = const Color(0xFF233158);
}

class BlueAzure {
  final Color blueAzure25 = const Color(0xFFF0F5FE);
  final Color blueAzure50 = const Color(0xFFECF3FE);
  final Color blueAzure100 = const Color(0xFFC5D9FB);
  final Color blueAzure200 = const Color(0xFFA9C6F9);
  final Color blueAzure300 = const Color(0xFF82ADF6);
  final Color blueAzure400 = const Color(0xFF6A9DF4);
  final Color blueAzure500 = const Color(0xFF4584F1);
  final Color blueAzure600 = const Color(0xFF3F78DB);
  final Color blueAzure700 = const Color(0xFF315EAB);
  final Color blueAzure800 = const Color(0xFF264985);
  final Color blueAzure900 = const Color(0xFF1D3765);
  final Color blueAzure950 = const Color(0xFF172C51);
}

class Blue {
  final Color blue25 = const Color(0xFFF5FAFF);
  final Color blue50 = const Color(0xFFEFF8FF);
  final Color blue100 = const Color(0xFFD1E9FF);
  final Color blue200 = const Color(0xFFB2DDFF);
  final Color blue300 = const Color(0xFF84CAFF);
  final Color blue400 = const Color(0xFF53B1FD);
  final Color blue500 = const Color(0xFF2E90FA);
  final Color blue600 = const Color(0xFF1570EF);
  final Color blue700 = const Color(0xFF175CD3);
  final Color blue800 = const Color(0xFF1849A9);
  final Color blue900 = const Color(0xFF194185);
  final Color blue950 = const Color(0xFF102A56);
}

class Green {
  final Color green25 = const Color(0xFFF6FEF9);
  final Color green50 = const Color(0xFFEDFCF2);
  final Color green100 = const Color(0xFFD3F8DF);
  final Color green200 = const Color(0xFFAAF0C4);
  final Color green300 = const Color(0xFF73E2A3);
  final Color green400 = const Color(0xFF3CCB7F);
  final Color green500 = const Color(0xFF16B364);
  final Color green600 = const Color(0xFF099250);
  final Color green700 = const Color(0xFF087443);
  final Color green800 = const Color(0xFF095C37);
  final Color green900 = const Color(0xFF084C2E);
  final Color green950 = const Color(0xFF052E1C);
}

class Teal {
  final Color teal25 = const Color(0xFFF6FEFC);
  final Color teal50 = const Color(0xFFF0FDF9);
  final Color teal100 = const Color(0xFFCCFBEF);
  final Color teal200 = const Color(0xFF99F6E0);
  final Color teal300 = const Color(0xFF5FE9D0);
  final Color teal400 = const Color(0xFF2ED3B7);
  final Color teal500 = const Color(0xFF15B79E);
  final Color teal600 = const Color(0xFF0E9384);
  final Color teal700 = const Color(0xFF107569);
  final Color teal800 = const Color(0xFF125D56);
  final Color teal900 = const Color(0xFF134E48);
  final Color teal950 = const Color(0xFF0A2926);
}

class OrangeDark {
  final Color orangeDark25 = const Color(0xFFFFF9F5);
  final Color orangeDark50 = const Color(0xFFFFF4ED);
  final Color orangeDark100 = const Color(0xFFFFE6D5);
  final Color orangeDark200 = const Color(0xFFFFD6AE);
  final Color orangeDark300 = const Color(0xFFFF9C66);
  final Color orangeDark400 = const Color(0xFFFF692E);
  final Color orangeDark500 = const Color(0xFFFF4405);
  final Color orangeDark600 = const Color(0xFFE62E05);
  final Color orangeDark700 = const Color(0xFFBC1B06);
  final Color orangeDark800 = const Color(0xFF97180C);
  final Color orangeDark900 = const Color(0xFF771A0D);
  final Color orangeDark950 = const Color(0xFF57130A);
}

class Goldenrod {
  final Color goldenrod25 = const Color(0xFFFFF8ED);
  final Color goldenrod50 = const Color(0xFFFFF6E9);
  final Color goldenrod100 = const Color(0xFFFFE3BB);
  final Color goldenrod200 = const Color(0xFFFFD69B);
  final Color goldenrod300 = const Color(0xFFFFC36D);
  final Color goldenrod400 = const Color(0xFFFFB751);
  final Color goldenrod500 = const Color(0xFFFFA525);
  final Color goldenrod600 = const Color(0xFFE89622);
  final Color goldenrod700 = const Color(0xFFB5751A);
  final Color goldenrod800 = const Color(0xFF8C5B14);
  final Color goldenrod900 = const Color(0xFF6B4510);
  final Color goldenrod950 = const Color(0xFF56370D);
}

class Background {
  final Color backgroundDisabled = const Color(0xFFF2F4F7);
  final Color backgroundActive = const Color(0xFFF9FAFB);
  final Color backgroundQuaternary = const Color(0xFFE4E7EC);
}

class Foreground {
  final Color foregroundDisabled = const Color(0xFF98A2B3);
  final Color foregroundQuinaryHover = const Color(0xFF667085);
}

class Border {
  final Color borderDisabledSubtle = const Color(0xFFE4E7EC);
  final Color borderSubtle = const Color(0x1FFFFFFF);
  final Color borderErrorSubtle = const Color(0xFFEC8486);
  final Color borderPrimary = const Color(0xFFD0D5DD);
  final Color borderSecondary = const Color(0xFFE4E7EC);
}

class Shadows {
  final Color shadowXs = const Color(0xFF101828);
}

class Buttons {
  final Color buttonPrimaryForeground = const Color(0xFFFFFFFF);
}

class Text {
  final Color textPlaceholder = const Color(0xFF667085);
  final Color textTertiary = const Color(0xFF475467);
  final Color textSecondary = const Color(0xFF344054);
  final Color textPrimary = const Color(0xFF101828);
}

class Sliders {
  final Color sliderHandleBackground = const Color(0xFFFFFFFF);
}

class Divider {
  final Color dividerColor = const Color(0xD9D9D9D9);
}

class Menu {
  final Color activeText = const Color(0xff4489D3);
}

class AppBar {
  final Color appBarTextHighlight = const Color(0xFF1976D2);
}

class DextraAppColor {
  static PrimaryColors primary = PrimaryColors();
  static DarkModeColors darkmode = DarkModeColors();

  static AccentColors accentColors = AccentColors();
  static ModernGreyColors modernGrey = ModernGreyColors();
  static DarkGreyColors darkGrey = DarkGreyColors();
  static ErrorColors error = ErrorColors();
  static SuccessColors success = SuccessColors();
  static WarningColors warning = WarningColors();
  static SkyBlue skyBlue = SkyBlue();
  static BlueAzure blueAzure = BlueAzure();
  static Blue blue = Blue();
  static Green green = Green();
  static Teal teal = Teal();
  static OrangeDark orangeDark = OrangeDark();
  static Goldenrod goldenrod = Goldenrod();
  static Background background = Background();
  static Foreground foreground = Foreground();
  static Border border = Border();
  static Shadows shadows = Shadows();
  static Buttons buttons = Buttons();
  static Text text = Text();
  static Sliders sliders = Sliders();
  static Divider divider = Divider();
  static Menu menu = Menu();
  static AppBar appBar = AppBar();
}
