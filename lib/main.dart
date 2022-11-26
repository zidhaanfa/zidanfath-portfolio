import 'package:cyzedlabs_portfolio/theme/theme.dart';

import '/pages/experience/experience.dart';
import '/pages/home/homepage.dart';
import '/pages/project/projectView.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/themeClass.dart';
import 'pageNotFound.dart';
import 'pages/SplashScreen/splashScreen.dart';
import 'pages/about/aboutView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZidanFath',
      theme: ThemeCyzed.light,
      darkTheme: ThemeCyzed.dark,
      home: const SplashScreen(),
      themeMode: ThemeClass.themeDark,
      scrollBehavior: const ScrollBehavior(),
    );
  }
}
