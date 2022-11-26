import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api/api.dart';
import '../../../theme/theme.dart';

class ComponentsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement ComponentsController

  final count = 0.obs;
  final active = 0.obs;
  final isActive = true.obs;
  bool lebar = Get.width < 900;

  late TabController controller;
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Home",
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Projects",
          ),
        ],
      ),
    ),
  ];

  final List<PopupMenuItem<int>> menuPopUp = [
    PopupMenuItem<int>(
      value: 0,
      child: Text("Home"),
    ),
    PopupMenuItem<int>(
      value: 1,
      child: Text("Projects"),
    ),
  ];
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    controller.dispose();
  }

  void increment() => count.value++;

  static responsiveSize(BuildContext context) {
    MediaQuery.of(context).size.width < 600;
  }

  final kartu2 = CardLoading(
    height: 50,
  );

  final kartu = CardLoading(
    height: 10,
    width: 200,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    margin: EdgeInsets.only(bottom: 10),
  );
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
      colorText: ThemeCyzed.textWhite,
      backgroundColor: colors,
      duration: const Duration(seconds: 3),
      icon: Icon(
        Icons.error,
        color: ThemeCyzed.textWhite,
      ),
      animationDuration: const Duration(milliseconds: 1000),
    );
  }

  var email = TextEditingController();

  void sendEmail() async {
    print(email.text);
    var response = await UserProvider().addEmailSubscribe(email.value.text);
    var status = response.body['status'];
    var message = response.body['message'];
    if (response.body['status'] == 'success') {
      print(response.body);
      snackbar(status, message);
    } else if (response.body['status'] == 'successNoFound') {
      print(response.body);
      snackbar(status, message);
    } else {
      print(response.body);
      snackbar(status, message);
    }
  }

  //TESTING
  PreferredSizeWidget appBar(activated,height, tab) {
    return lebar
        ? PreferredSize(
            preferredSize: height == false ? Size.fromHeight(60) : Size.fromHeight(200),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Image.asset(
                'assets/images/Z3.png',
                height: 40,
              ),
              backgroundColor: Colors.black,
               bottom: activated ==  1 ? tab : null,
            ),
          )
        : PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Image.asset(
                'assets/images/Z3.png',
                height: 40,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.toNamed('/home');
                    },
                  child: Text("Home",
                      style: TextStyle(
                        color: activated == 0
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: activated == 0
                            ? FontWeight.bold
                            : FontWeight.normal,
                      )),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/projects');
                  },
                  child: Text("Projects",
                      style: TextStyle(
                        color: activated == 1
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: activated == 1
                            ? FontWeight.bold
                            : FontWeight.normal,
                      )),
                ),
                SizedBox(
                  width: 15,
                )
              ],
              backgroundColor: Colors.black,
            ),
          );
  }

  Drawer drawer(activated) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/Z3.png',
              height: 60,
            ),
            decoration: BoxDecoration(
              color: ThemeCyzed.blackBackground,
            ),
          ),
          ListTile(
            title: Text('Homepage',
                style: TextStyle(
                  color: activated == 0
                      ? ThemeCyzed.textWhite
                      : Colors.white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight:
                      activated == 0 ? FontWeight.bold : FontWeight.normal,
                )),
            selectedColor: ThemeCyzed.button,
            autofocus: activated == 0 ? true : false,
            mouseCursor: SystemMouseCursors.click,
            hoverColor: ThemeCyzed.button,
            focusColor: ThemeCyzed.card,
            enabled: true,
            enableFeedback: activated == 0 ? true : false,
            onTap: () {
              // Update the state of the app.
              // ...
              Get.back();
            },
          ),
          ListTile(
            title: Text('Projects',
                style: TextStyle(
                  color: activated == 1
                      ? ThemeCyzed.textWhite
                      : Colors.white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight:
                      activated == 1 ? FontWeight.bold : FontWeight.normal,
                )),
            selectedColor: ThemeCyzed.button,
            autofocus: activated == 1 ? true : false,
            mouseCursor: SystemMouseCursors.click,
            hoverColor: ThemeCyzed.button,
            focusColor: ThemeCyzed.card,
            enabled: true,
            enableFeedback: activated == 1 ? true : false,
            onTap: () {
              // Update the state of the app.
              // ...
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
