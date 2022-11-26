import 'package:cyzedlabs_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

import '../../components/appBar.dart';
import '../../components/sidebar.dart';
import '../../testing/appDrawer.dart';
import '../../theme/theme.dart';
import '../home/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/Z3.png',
        height: 300,
        width: 300,
      ),
      title: Text(
        "Zidanfath",
        style: TextStyle(
          color: ThemeCyzed.textWhite,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black,
      showLoader: true,
      loadingText: Text("Loading...",
          style: TextStyle(
            color: ThemeCyzed.textWhite,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      navigator: AppDrawer(),
      durationInSeconds: 1,
    );
  }
}
