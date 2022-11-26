// import 'package:animations/animations.dart';
// import 'package:cyzedlabs_portfolio/main.dart';
// import 'package:cyzedlabs_portfolio/pages/about/aboutView.dart';
// import 'package:cyzedlabs_portfolio/pages/home/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sidebarx/sidebarx.dart';

// import '../pages/experience/experience.dart';
// import '../pages/project/projectView.dart';
// import '../pages/skill/skill.dart';

// class Sidebar extends StatefulWidget {
//   const Sidebar({Key? key}) : super(key: key);

//   @override
//   _SidebarState createState() => _SidebarState();
// }

// class _SidebarState extends State<Sidebar> {
//   final _controller = SidebarXController(
//     selectedIndex: 0,
//     extended: true,
//   );
//   final _key = GlobalKey<ScaffoldState>();
//   ContainerTransitionType _transitionType = ContainerTransitionType.fade;
//   @override
//   Widget build(BuildContext context) {
//     final isSmallScreen = MediaQuery.of(context).size.width < 600;
//     return Scaffold(
//       key: _key,
//       appBar: isSmallScreen
//           ? AppBar(
//               backgroundColor: blackBackground,
//               title: Image.asset(
//                 'assets/images/Z3.png',
//                 height: 40,
//               ),
//               leading: IconButton(
//                 onPressed: () {
//                   // if (!Platform.isAndroid && !Platform.isIOS) {
//                   //   _controller.setExtended(true);
//                   // }
//                   _key.currentState?.openDrawer();
//                 },
//                 icon: const Icon(
//                   Icons.menu,
//                   color: textWhite,
//                 ),
//               ),
//             )
//           : null,
//       drawer: ExampleSidebarX(controller: _controller),
//       body: Row(
//         children: [
//           if (!isSmallScreen) ExampleSidebarX(controller: _controller),
//           Expanded(
//             child: Center(
//               child: _ScreensExample(
//                 controller: _controller,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ExampleSidebarX extends StatelessWidget {
//   const ExampleSidebarX({
//     Key? key,
//     required SidebarXController controller,
//   })  : _controller = controller,
//         super(key: key);

//   final SidebarXController _controller;

//   @override
//   Widget build(BuildContext context) {
//     final isSmallScreen = MediaQuery.of(context).size.width < 600;
//     return SidebarX(
//       controller: _controller,
//       theme: SidebarXTheme(
//         margin: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: primaryContainer,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         hoverColor: primary,
//         textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
//         selectedTextStyle: const TextStyle(color: Colors.white),
//         itemTextPadding: const EdgeInsets.only(left: 30),
//         selectedItemTextPadding: const EdgeInsets.only(left: 30),
//         itemDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: primaryContainer),
//         ),
//         selectedItemDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: primaryContainer.withOpacity(0.37)),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.28),
//               blurRadius: 30,
//             )
//           ],
//         ),
//         iconTheme: IconThemeData(
//           color: Colors.white.withOpacity(0.7),
//           size: 20,
//         ),
//         selectedIconTheme: const IconThemeData(
//           color: Colors.white,
//           size: 20,
//         ),
//       ),
//       extendedTheme: const SidebarXTheme(
//         width: 200,
//         decoration: BoxDecoration(
//           color: blackBackground,
//         ),
//       ),
//       footerDivider: const Divider(
//         color: Colors.white,
//         thickness: 0.5,
//       ),
//       headerBuilder: (context, extended) {
//         return Container(
//           child: Image.asset(
//             'assets/images/Z3.png',
//             height: isSmallScreen ? 50 : 100,
//             width: isSmallScreen ? 50 : 120,
//           ),
//         );
//       },
//       items: [
//         SidebarXItem(
//           icon: Icons.home,
//           label: 'Home',
//           onTap: () {
//             debugPrint('Home');
//           },
//         ),
//         const SidebarXItem(
//           icon: Icons.code,
//           label: 'Project',
//         ),
//       ],
//     );
//   }
// }

// class _ScreensExample extends StatelessWidget {
//   const _ScreensExample({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);

//   final SidebarXController controller;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return AnimatedBuilder(
//       animation: controller,
//       builder: (context, child) {
//         final pageTitle = _getTitleByIndex(controller.selectedIndex);
//         switch (controller.selectedIndex) {
//           case 0:
//             return Homepage();
//           case 1:
//             return ProjectView();

//           default:
//             return Text(
//               pageTitle,
//               style: theme.textTheme.headlineSmall,
//             );
//         }
//       },
//     );
//   }
// }

// String _getTitleByIndex(int index) {
//   switch (index) {
//     case 0:
//       return 'Home';
//     case 1:
//       return 'Experience';
//     case 2:
//       return 'Education';
//     case 3:
//       return 'Skill';
//     case 4:
//       return 'Project';
//     case 5:
//       return 'Contact';
//     case 6:
//       return 'Settings';
//     default:
//       return 'Not found page';
//   }
// }
