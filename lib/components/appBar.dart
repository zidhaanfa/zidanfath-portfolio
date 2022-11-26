import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../theme/theme.dart';

PreferredSizeWidget appBar(BuildContext context, int title) {
  final isSmallScreen = MediaQuery.of(context).size.width < 600;
  return isSmallScreen
      ? PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Image.asset(
              'assets/images/Z3.png',
              height: 40,
            ),
            backgroundColor: Colors.black,
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
                  Get.toNamed("/home");
                },
                child: Text("Home",
                    style: TextStyle(
                      color: title == 1
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight:
                          title == 1 ? FontWeight.bold : FontWeight.normal,
                    )),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed("/projects",
                  );
                },
                child: Text("Projects",
                    style: TextStyle(
                      color: title == 2
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight:
                          title == 2 ? FontWeight.bold : FontWeight.normal,
                    )),
              ),
              // TextButton(
              //   onPressed: () {},
              //   child: Text("Projects",
              //       style: TextStyle(
              //         color: title == 3
              //             ? Colors.white
              //             : Colors.white.withOpacity(0.5),
              //         fontSize: 16,
              //         fontWeight:
              //             title == 1 ? FontWeight.bold : FontWeight.normal,
              //       )),
              // ),
              SizedBox(
                width: 15,
              )
            ],
            backgroundColor: Colors.black,
          ),
        );
}

Widget drawer(BuildContext context, int title) {
  final isSmallScreen = MediaQuery.of(context).size.width < 600;
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
                color: title == 1 ? ThemeCyzed.textWhite : Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: title == 1 ? FontWeight.bold : FontWeight.normal,
              )),
          selectedColor: ThemeCyzed.button,
          autofocus: title == 1 ? true : false,
          mouseCursor: SystemMouseCursors.click,
          hoverColor: ThemeCyzed.button,
          focusColor: ThemeCyzed.card,
          enabled: true,
          enableFeedback: title == 1 ? true : false,
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Projects',
              style: TextStyle(
                color: title == 2 ? ThemeCyzed.textWhite : Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: title == 2 ? FontWeight.bold : FontWeight.normal,
              )),
          selectedColor: ThemeCyzed.button,
          autofocus: title == 2 ? true : false,
          mouseCursor: SystemMouseCursors.click,
          hoverColor: ThemeCyzed.button,
          focusColor: ThemeCyzed.card,
          enabled: true,
          enableFeedback: title == 2 ? true : false,
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),
  );
}


class _InkWellOverlay extends StatelessWidget {
  const _InkWellOverlay({
    required this.openContainer,
    required this.child,
  });

  final VoidCallback openContainer;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: openContainer,
        child: child,
      ),
    );
  }
}

// class Bottombar extends StatefulWidget {
//   const Bottombar({Key? key}) : super(key: key);

//   @override
//   _BottombarState createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   int seciliMenu = 0;

//   late List<Widget> distributorBreeze;
//   late Homepage homepage;
//   late About about;
//   late ProjectView projectView;

//   @override
//   void initState() {
//     super.initState();
//     homepage = const Homepage();
//     about = const About();
//     projectView = const ProjectView();

//     distributorBreeze = [homepage, projectView, about];
//   }

//   @override
//   Widget build(BuildContext context) {
//     final sw = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AdaptiveNavBar(
//         excludeHeaderSemantics: true,
//         screenWidth: sw,
//         title: const Text("Adaptive NavBar"),
//         navBarItems: [
//           NavBarItem(
//             text: "Home",
//             onTap: () {
//               setState(() {
//                 seciliMenu = 0;
//               });
//             },
//           ),
//           NavBarItem(
//             text: "Project",
//             onTap: () {
//               setState(() {
//                 seciliMenu = 1;
//               });
//             },
//           ),
//           NavBarItem(
//             text: "About",
//             onTap: () {
//               setState(() {
//                 seciliMenu = 2;
//               });
//             },
//           ),
//           NavBarItem(
//             text: "Experience",
//             onTap: () {
//               Navigator.pushNamed(context, "routeName");
//             },
//           ),
//           NavBarItem(
//             text: "Skisls",
//             onTap: () {
//               Navigator.pushNamed(context, "routeName");
//             },
//           ),
//           NavBarItem(
//             text: "Education",
//             onTap: () {
//               Navigator.pushNamed(context, "routeName");
//             },
//           ),
//         ],
//       ),
//       body: distributorBreeze[seciliMenu],
//     );
//   }
// }
