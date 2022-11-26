// import 'package:flutter/material.dart';
// import 'package:flutter_portfolio_zidanfath2/app/modules/home/views/home_view.dart';
// import 'package:flutter_portfolio_zidanfath2/app/modules/skills/views/skills_view.dart';

// import 'package:get/get.dart';
// import '../../../theme/theme.dart';
// import '../../Projects/views/projects_view.dart';
// import '../../home/views/list_view_view.dart';
// import '../controllers/components_controller.dart';

// class AppDrawerView extends StatefulWidget {
//   const AppDrawerView({Key? key}) : super(key: key);

//   @override
//   _AppDrawerState createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawerView> {
//   int index = 0;

//   Future<Widget> _getPage() async {
//     switch (index) {
//       case 0:
//         return HomeView();
//       case 1:
//         return ProjectsView();
//       default:
//         return HomeView();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isSmallScreen = MediaQuery.of(context).size.width < 700;
//     return Scaffold(
//       appBar: isSmallScreen
//           ? PreferredSize(
//               preferredSize: Size.fromHeight(60),
//               child: AppBar(
//                 automaticallyImplyLeading: false,
//                 title: Image.asset(
//                   'assets/images/Z3.png',
//                   height: 40,
//                 ),
//                 backgroundColor: Colors.black,
//               ),
//             )
//           : PreferredSize(
//               preferredSize: Size.fromHeight(60),
//               child: AppBar(
//                 automaticallyImplyLeading: false,
//                 centerTitle: true,
//                 title: Image.asset(
//                   'assets/images/Z3.png',
//                   height: 40,
//                 ),
//                 actions: [
//                   TextButton(
//                     onPressed: () {
//                       setState(() {
//                         index = 0;
//                       });
//                     },
//                     child: Text("Home",
//                         style: TextStyle(
//                           color: index == 0
//                               ? Colors.white
//                               : Colors.white.withOpacity(0.5),
//                           fontSize: 16,
//                           fontWeight:
//                               index == 0 ? FontWeight.bold : FontWeight.normal,
//                         )),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       setState(() {
//                         index = 1;
//                       });
//                     },
//                     child: Text("Projects",
//                         style: TextStyle(
//                           color: index == 1
//                               ? Colors.white
//                               : Colors.white.withOpacity(0.5),
//                           fontSize: 16,
//                           fontWeight:
//                               index == 1 ? FontWeight.bold : FontWeight.normal,
//                         )),
//                   ),
//                   // TextButton(
//                   //   onPressed: () {},
//                   //   child: Text("Projects",
//                   //       style: TextStyle(
//                   //         color: title == 3
//                   //             ? Colors.white
//                   //             : Colors.white.withOpacity(0.5),
//                   //         fontSize: 16,
//                   //         fontWeight:
//                   //             title == 1 ? FontWeight.bold : FontWeight.normal,
//                   //       )),
//                   // ),
//                   SizedBox(
//                     width: 15,
//                   )
//                 ],
//                 backgroundColor: Colors.black,
//               ),
//             ),
//       endDrawer: isSmallScreen
//           ? Drawer(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: <Widget>[
//                   DrawerHeader(
//                     padding: EdgeInsets.all(20),
//                     child: Image.asset(
//                       'assets/images/Z3.png',
//                       height: 60,
//                     ),
//                     decoration: BoxDecoration(
//                       color: ThemeCyzed.blackBackground,
//                     ),
//                   ),
//                   ListTile(
//                     title: Text('Homepage',
//                         style: TextStyle(
//                           color: index == 0
//                               ? ThemeCyzed.textWhite
//                               : Colors.white.withOpacity(0.5),
//                           fontSize: 15,
//                           fontWeight:
//                               index == 0 ? FontWeight.bold : FontWeight.normal,
//                         )),
//                     selectedColor: ThemeCyzed.button,
//                     autofocus: index == 0 ? true : false,
//                     mouseCursor: SystemMouseCursors.click,
//                     hoverColor: ThemeCyzed.button,
//                     focusColor: ThemeCyzed.card,
//                     enabled: true,
//                     enableFeedback: index == 0 ? true : false,
//                     onTap: () {
//                       // Update the state of the app.
//                       // ...
//                       setState(() {
//                         index = 0;
//                       });
//                       Get.back();
//                     },
//                   ),
//                   ListTile(
//                     title: Text('Projects',
//                         style: TextStyle(
//                           color: index == 1
//                               ? ThemeCyzed.textWhite
//                               : Colors.white.withOpacity(0.5),
//                           fontSize: 15,
//                           fontWeight:
//                               index == 1 ? FontWeight.bold : FontWeight.normal,
//                         )),
//                     selectedColor: ThemeCyzed.button,
//                     autofocus: index == 1 ? true : false,
//                     mouseCursor: SystemMouseCursors.click,
//                     hoverColor: ThemeCyzed.button,
//                     focusColor: ThemeCyzed.card,
//                     enabled: true,
//                     enableFeedback: index == 1 ? true : false,
//                     onTap: () {
//                       // Update the state of the app.
//                       // ...
//                       setState(() {
//                         index = 1;
//                       });
//                       Get.back();
//                     },
//                   ),
//                 ],
//               ),
//             )
//           : null,
//       body: SafeArea(
//         child: FutureBuilder(
//           future: _getPage(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return snapshot.data as Widget;
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
