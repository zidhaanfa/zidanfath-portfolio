import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../api/api.dart';
import '../../../../theme/theme.dart';

class SkillsController extends GetxController {
  //TODO: Implement SkillsController

  final count = 0.obs;
  final loadingIs = true.obs;
  final isLoading = true;
  bool lebar = Get.width < 600;
  List<dynamic> list = [];

  @override
  void onInit() {
    super.onInit();
    fetchSkills();
    // if (getProduction() == true) {
    // } else {
    //   list = listDev;
    //   isLoading = false;
    // }
  }

  void onReady() {
    super.onReady();
    fetchSkills();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void fetchSkills() async {
    print('proses fetch data');
    try {
      print('proses try');
      var response = await UserProvider().getSkills();
      var status = response.body['status'];
      var message = response.body['message'];
      if (response.body['status'] == 'success') {
        list = response.body['data'];
        loadingIs(false);
        if (kDebugMode) {
          print(response.body);
        }
        print(message);
      } else if (response.body['status'] == 'successNoFound') {
        if (kDebugMode) {
          print(response.body);
        }
        print(message);
      } else {
        if (kDebugMode) {
          print(response.body);
        }
        print(message);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
        loadingIs(false);
        Get.snackbar(
          'Error',
          'Something went wrong',
          colorText: ThemeCyzed.textWhite,
          backgroundColor: ThemeCyzed.error,
          duration: const Duration(seconds: 3),
          icon: Icon(
            Icons.error,
            color: ThemeCyzed.textWhite,
          ),
          animationDuration: const Duration(milliseconds: 1000),
        );
      }
    }
  }
}
