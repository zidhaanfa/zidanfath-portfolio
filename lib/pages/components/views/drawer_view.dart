import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/theme.dart';

class DrawerView extends StatelessWidget {
  final int activated;
  const DrawerView({super.key, required this.activated});

  @override
  Widget build(BuildContext context) {
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
