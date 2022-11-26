import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../theme/theme.dart';

class Components extends GetxController {
  bool lebar = Get.width < 900;
  final kartu2 = const CardLoading(
    height: 50,
  );

  final kartu = const CardLoading(
    height: 10,
    width: 200,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    margin: EdgeInsets.only(bottom: 10),
  );

  // responsiveSize(BuildContext context) {
  //   MediaQuery.of(context).size.width < 600;
  // }
    snackbar(status, message) {
    final Color success = ThemeCyzed.success;
    final Color error = ThemeCyzed.error;
    final Color successNoFound = ThemeCyzed.warning;
    final Color colors;
    final Color text;
    final Color textwhite = ThemeCyzed.textWhite;
    final Color textblack = ThemeCyzed.textBlack;
    if (status == "success") {
      colors = success;
      text = textblack;
    } else if (status == "successNoFound") {
      colors = successNoFound;
      text = textblack;
    } else {
      colors = error;
      text = textwhite;
    }
    Get.snackbar(
      status,
      message,
      colorText: text,
      backgroundColor: colors,
      duration: const Duration(seconds: 3),
      icon: Icon(
        Icons.error,
        color: text,
      ),
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
