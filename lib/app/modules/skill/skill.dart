// import 'dart:convert';

// import 'package:card_loading/card_loading.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:responsive_grid_list/responsive_grid_list.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../main.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import '../../theme/theme.dart';
// import '/../api/api.dart';

// class Skill extends StatefulWidget {
//   const Skill({Key? key}) : super(key: key);

//   @override
//   _SkillState createState() => _SkillState();
// }

// class _SkillState extends State<Skill> {
//   SharedPreferences? prefs;
//   List<dynamic> listSkill = [];
//   // bool isLoading = true;
//   bool isLoading = true;

//   getListSkills() async {
//     print('proses fetch data');
//     try {
//       print('proses try');
//       var response = await UserProvider().getSkills();
//       var status = response.body['status'];
//       var message = response.body['message'];
//       if (response.body['status'] == 'success') {
//         listSkill = response.body['data'];
//         isLoading = false;
//         if (kDebugMode) {
//           print(response.body);
//         }
//         print(message);
//       } else if (response.body['status'] == 'successNoFound') {
//         if (kDebugMode) {
//           print(response.body);
//         }
//         isLoading = false;
//         print(message);
//       } else {
//         if (kDebugMode) {
//           print(response.body);
//         }
//         print(message);
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//         isLoading = false;
//         Get.snackbar(
//           'Error',
//           'Something went wrong',
//           colorText: ThemeCyzed.textWhite,
//           backgroundColor: ThemeCyzed.error,
//           duration: const Duration(seconds: 3),
//           icon: Icon(
//             Icons.error,
//             color: ThemeCyzed.textWhite,
//           ),
//           animationDuration: const Duration(milliseconds: 1000),
//         );
//       }
//     }
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getListSkills();
//     // if (getProduction() == true) {
//     //   getListSkills();
//     // } else {
//     //   listSkill = listSkillDev;
//     //   isLoading = false;
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isSmallScreen = MediaQuery.of(context).size.width < 600;
//     Widget kartu = CardLoading(
//       height: 10,
//       width: 200,
//       borderRadius: BorderRadius.all(Radius.circular(10)),
//       margin: EdgeInsets.only(bottom: 10),
//     );
//     Widget kartu2 = CardLoading(
//       height: 50,
//     );
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: Image.asset(
//             'assets/images/bg2.png',
//           ).image,
//           fit: BoxFit.cover,
//         ),
//         color: whiteBackground,
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Flexible(
//                 child: SelectableText(
//                   'Skill',
//                   showCursor: false,
//                   cursorColor: Colors.black,
//                   toolbarOptions: ToolbarOptions(
//                       copy: true, selectAll: true, cut: false, paste: false),
//                   style: TextStyle(
//                     fontSize: isSmallScreen ? 26 : 30,
//                     color: textWhite,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Container(
//             height: 5,
//             width: 100,
//             decoration: BoxDecoration(
//               color: button,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           isLoading
//               ? ResponsiveGridList(
//                   minItemsPerRow:
//                       1, // The minimum items to show in a single row. Takes precedence over minItemWidth
//                   maxItemsPerRow:
//                       3, // The maximum items to show in a single row. Can be useful on large screens
//                   minItemWidth: 350,
//                   listViewBuilderOptions: ListViewBuilderOptions(
//                       scrollDirection: Axis.vertical,
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true),
//                   children: [
//                       Card(
//                         color: card,
//                         child: Column(
//                           children: [
//                             ListTile(
//                               leading: Container(
//                                 decoration: BoxDecoration(
//                                   color: textWhite,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Container(
//                                     width: 50,
//                                     height: 50,
//                                     child: kartu2,
//                                   ),
//                                 ),
//                               ),
//                               title: Text('Loading'),
//                               subtitle: LinearPercentIndicator(
//                                 animation: true,
//                                 animationDuration: 5000,
//                                 barRadius: Radius.circular(15),
//                                 width: 280,
//                                 lineHeight: 14.0,
//                                 percent: 1,
//                                 backgroundColor: Colors.grey,
//                                 trailing: Text(
//                                   '100%',
//                                   style: TextStyle(
//                                       color: textWhite,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 progressColor: button,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Card(
//                         color: card,
//                         child: Column(
//                           children: [
//                             ListTile(
//                               leading: Container(
//                                 decoration: BoxDecoration(
//                                   color: textWhite,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Container(
//                                     width: 50,
//                                     height: 50,
//                                     child: kartu2,
//                                   ),
//                                 ),
//                               ),
//                               title: Text('Loading'),
//                               subtitle: LinearPercentIndicator(
//                                 animation: true,
//                                 animationDuration: 5000,
//                                 barRadius: Radius.circular(15),
//                                 width: 280,
//                                 lineHeight: 14.0,
//                                 percent: 1,
//                                 backgroundColor: Colors.grey,
//                                 trailing: Text(
//                                   '100%',
//                                   style: TextStyle(
//                                       color: textWhite,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 progressColor: button,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ])
//               : listSkill.isEmpty
//                   ? ResponsiveGridList(
//                       minItemsPerRow:
//                           1, // The minimum items to show in a single row. Takes precedence over minItemWidth
//                       maxItemsPerRow:
//                           3, // The maximum items to show in a single row. Can be useful on large screens
//                       minItemWidth: 350,
//                       listViewBuilderOptions: ListViewBuilderOptions(
//                           scrollDirection: Axis.vertical,
//                           physics: const NeverScrollableScrollPhysics(),
//                           shrinkWrap: true),
//                       children: [
//                           Card(
//                             color: card,
//                             child: Column(
//                               children: [
//                                 ListTile(
//                                   leading: Container(
//                                     decoration: BoxDecoration(
//                                       color: textWhite,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.asset(
//                                         'assets/logo/noImage.png',
//                                         height: 50,
//                                         width: 50,
//                                         fit: BoxFit.fitHeight,
//                                       ),
//                                     ),
//                                   ),
//                                   title: Text("Tidak Ada Data"),
//                                   subtitle: LinearPercentIndicator(
//                                     animation: true,
//                                     animationDuration: 5000,
//                                     barRadius: Radius.circular(15),
//                                     width: 250,
//                                     lineHeight: 14.0,
//                                     percent: 1,
//                                     backgroundColor: Colors.grey,
//                                     trailing: Text(
//                                       '100%',
//                                       style: TextStyle(
//                                           color: textWhite,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     progressColor: button,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Card(
//                             color: card,
//                             child: Column(
//                               children: [
//                                 ListTile(
//                                   leading: Container(
//                                     decoration: BoxDecoration(
//                                       color: textWhite,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.asset(
//                                         'assets/logo/noImage.png',
//                                         height: 50,
//                                         width: 50,
//                                         fit: BoxFit.fitHeight,
//                                       ),
//                                     ),
//                                   ),
//                                   title: Text("Tidak Ada Data"),
//                                   subtitle: LinearPercentIndicator(
//                                     animation: true,
//                                     animationDuration: 5000,
//                                     barRadius: Radius.circular(15),
//                                     width: 250,
//                                     lineHeight: 14.0,
//                                     percent: 1,
//                                     backgroundColor: Colors.grey,
//                                     trailing: Text(
//                                       '100%',
//                                       style: TextStyle(
//                                           color: textWhite,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     progressColor: button,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ])
//                   : ResponsiveGridList(
//                       minItemsPerRow:
//                           1, // The minimum items to show in a single row. Takes precedence over minItemWidth
//                       maxItemsPerRow:
//                           3, // The maximum items to show in a single row. Can be useful on large screens
//                       minItemWidth: 350,
//                       listViewBuilderOptions: ListViewBuilderOptions(
//                           scrollDirection: Axis.vertical,
//                           physics: const NeverScrollableScrollPhysics(),
//                           shrinkWrap: true),
//                       children: List.generate(
//                           listSkill.length,
//                           (index) => Card(
//                                 color: card,
//                                 child: Column(
//                                   children: [
//                                     ListTile(
//                                       leading: Container(
//                                         decoration: BoxDecoration(
//                                           color: textWhite,
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                           child: Image.memory(
//                                             base64Decode(
//                                                 listSkill[index]['logo']),
//                                             height: 50,
//                                             width: 50,
//                                             fit: BoxFit.fitHeight,
//                                           ),
//                                         ),
//                                       ),
//                                       title: Text(
//                                           "${listSkill[index]['name']} - ${listSkill[index]['level']}"),
//                                       subtitle: LinearPercentIndicator(
//                                         animation: true,
//                                         animationDuration: 5000,
//                                         barRadius: Radius.circular(15),
//                                         width: 280,
//                                         lineHeight: 14.0,
//                                         percent: listSkill[index]['percentage'],
//                                         backgroundColor: Colors.grey,
//                                         trailing: Text(
//                                           '${listSkill[index]['percentage'] * 100}%',
//                                           style: TextStyle(
//                                               color: textWhite,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         progressColor: button,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ))),
//         ],
//       ),
//     );
//   }

//   List<dynamic> listSkillDev = [
//     {
//       "name": "Flutter",
//       "level": "Intermediate",
//       "percent": 0.75,
//       "logo": "assets/logo/flutter.png",
//     },
//     {
//       "name": "VueJS",
//       "level": "Basic",
//       "percent": 0.50,
//       "logo": "assets/logo/vueJS.png",
//     },
//     {
//       "name": "ReactJS",
//       "level": "Basic",
//       "percent": 0.50,
//       "logo": "assets/logo/reactJS.png",
//     },
//     {
//       "name": "React Native",
//       "level": "Beginner",
//       "percent": 0.25,
//       "logo": "assets/logo/reactJS.png",
//     },
//     {
//       "name": "Javascript",
//       "level": "Basic",
//       "percent": 0.50,
//       "logo": "assets/logo/javascript.png",
//     },
//     {
//       "name": "Figma",
//       "level": "Beginner",
//       "percent": 0.25,
//       "logo": "assets/logo/figma.png",
//     },
//     {
//       "name": "uiux",
//       "level": "Beginner",
//       "percent": 0.25,
//       "logo": "assets/logo/uiux.png",
//     },
//     {
//       "name": "Scrum Master",
//       "level": "Beginner",
//       "percent": 0.25,
//       "logo": "assets/logo/scrum.png",
//     },
//   ];
// }

// // import 'package:cyzedlabs_portfolio/pages/skill/controllers/skillController.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // class SkillView extends GetView{
// //   @override
// //   Widget build(BuildContext context) {
// //     final SkillController skillController = Get.put(SkillController());
// //     return Container(

// //     );
// //   }

// // }
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/theme.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../pages/components/controllers/components_controller.dart';
import 'controllers/skillController.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    final SkillsController data = Get.put(SkillsController());
    final ComponentsController dataComponents = Get.put(ComponentsController());
//Yes, it looks like Magic, Get will find your controller, and will deliver it to you. You can have 1 million controllers instantiated, Get will always give you the right controller.
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              'assets/images/bg2.png',
            ).image,
            fit: BoxFit.cover,
          ),
          color: ThemeCyzed.whiteBackground,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SelectableText(
                    'Skill',
                    showCursor: false,
                    cursorColor: Colors.black,
                    toolbarOptions: ToolbarOptions(
                        copy: true, selectAll: true, cut: false, paste: false),
                    style: TextStyle(
                      fontSize: data.lebar ? 26 : 30,
                      color: ThemeCyzed.textWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 5,
              width: 100,
              decoration: BoxDecoration(
                color: ThemeCyzed.button,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            data.loadingIs.value
                ? ResponsiveGridList(
                    minItemsPerRow:
                        1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow:
                        3, // The maximum items to show in a single row. Can be useful on large screens
                    minItemWidth: 350,
                    listViewBuilderOptions: ListViewBuilderOptions(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true),
                    children: [
                        Card(
                          color: ThemeCyzed.card,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                    color: ThemeCyzed.textWhite,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: dataComponents.kartu2,
                                    ),
                                  ),
                                ),
                                title: Text('Loading'),
                                subtitle: LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 5000,
                                  barRadius: Radius.circular(15),
                                  width: data.lebar ? 200 : 250,
                                  lineHeight: 14.0,
                                  percent: 1,
                                  backgroundColor: Colors.grey,
                                  trailing: Text(
                                    '100%',
                                    style: TextStyle(
                                        color: ThemeCyzed.textWhite,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  progressColor: ThemeCyzed.button,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: ThemeCyzed.card,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                    color: ThemeCyzed.textWhite,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: dataComponents.kartu2,
                                    ),
                                  ),
                                ),
                                title: Text('Loading'),
                                subtitle: LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 5000,
                                  barRadius: Radius.circular(15),
                                  width: data.lebar ? 200 : 250,
                                  lineHeight: 14.0,
                                  percent: 1,
                                  backgroundColor: Colors.grey,
                                  trailing: Text(
                                    '100%',
                                    style: TextStyle(
                                        color: ThemeCyzed.textWhite,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  progressColor: ThemeCyzed.button,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])
                : data.list.isEmpty
                    ? Center(
                        child: Text(
                          'No Data',
                          style: TextStyle(
                            fontSize: 20,
                            color: ThemeCyzed.textWhite,
                          ),
                        ),
                      )
                    : ResponsiveGridList(
                        minItemsPerRow:
                            1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                        maxItemsPerRow:
                            3, // The maximum items to show in a single row. Can be useful on large screens
                        minItemWidth: 350,
                        listViewBuilderOptions: ListViewBuilderOptions(
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true),
                        children: List.generate(
                            data.list.length,
                            (index) => Card(
                                  color: ThemeCyzed.card,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: Container(
                                          decoration: BoxDecoration(
                                            color: ThemeCyzed.textWhite,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.memory(
                                              base64Decode(
                                                  data.list[index]['logo']),
                                              height: 50,
                                              width: 50,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        title: Text(
                                            "${data.list[index]['name']} - ${data.list[index]['level']}"),
                                        subtitle: LinearPercentIndicator(
                                          animation: true,
                                          animationDuration: 5000,
                                          barRadius: Radius.circular(15),
                                          width: data.lebar ? 200 : 250,
                                          lineHeight: 14.0,
                                          percent: data.list[index]
                                              ['percentage'],
                                          backgroundColor: Colors.grey,
                                          trailing: Text(
                                            '${data.list[index]['percentage'] * 100}%',
                                            style: TextStyle(
                                                color: ThemeCyzed.textWhite,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          progressColor: ThemeCyzed.button,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
          ],
        ),
      ),
    );
  }
}
