import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeCyzed {
  ThemeCyzed._();
  static ThemeMode themeLight = ThemeMode.light;
  static ThemeMode themeDark = ThemeMode.dark;

  static ThemeData light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color.fromARGB(255, 212, 212, 212),
      primaryContainer: Color.fromARGB(255, 255, 255, 255),
      secondary: Color.fromARGB(255, 172, 172, 172),
      secondaryContainer: Color.fromARGB(255, 198, 198, 198),
      tertiary: Color.fromARGB(255, 250, 250, 250),
      tertiaryContainer: Color.fromARGB(255, 255, 255, 255),
      appBarColor: Color.fromARGB(255, 255, 255, 255),
      error: Color(0xffb00020),
    ),
    appBarStyle: FlexAppBarStyle.material,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
      textButtonRadius: 14.0,
      elevatedButtonRadius: 14.0,
      outlinedButtonRadius: 14.0,
      unselectedToggleIsColored: true,
      appBarBackgroundSchemeColor: SchemeColor.background,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    fontFamily: GoogleFonts.firaCode().fontFamily,
  );
  static ThemeData dark = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color.fromARGB(255, 0, 0, 0),
      primaryContainer: Color.fromARGB(255, 1, 18, 31),
      secondary: Color.fromARGB(255, 28, 36, 48),
      secondaryContainer: Color(0xff2C394B),
      tertiary: Color.fromARGB(255, 37, 51, 62),
      tertiaryContainer: Color(0xff334756),
      appBarColor: Color.fromARGB(255, 5, 22, 35),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
      textButtonRadius: 14.0,
      elevatedButtonRadius: 14.0,
      outlinedButtonRadius: 14.0,
      unselectedToggleIsColored: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
  
static Color primary = const Color.fromARGB(255, 5, 22, 35);
static Color primaryContainer = const Color.fromARGB(255, 0, 0, 0);
static Color secondary = const Color.fromARGB(255, 28, 36, 48);
static Color secondaryContainer = const Color(0xff2C394B);
static Color tertiary = const Color.fromARGB(255, 37, 51, 62);
static Color tertiaryContainer = const Color(0xff334756);
static Color appBarColor = const Color.fromARGB(255, 11, 11, 13);
static Color error = const Color(0xffb00020);
static Color success = const Color(0xff4caf50);
static Color warning = const Color(0xffff9800);
static Color blackBackground = const Color(0xff000000);
static Color whiteBackground = const Color.fromARGB(255, 1, 12, 19);
static Color textBlack = const Color(0xff000000);
static Color textBlackSec = const Color(0xff000000).withOpacity(0.5);
static Color textWhiteSec = const Color.fromARGB(255, 204, 204, 204);
static Color textWhite = const Color(0xffffffff);
static Color footerBackground = const Color.fromARGB(255, 11, 11, 11);
static Color button = const Color(0xffF0A500);
static Color card = const Color(0xff334756);

}
