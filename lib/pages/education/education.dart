import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../main.dart';
import '../../theme/theme.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SelectableText(
                  'Education',
                  showCursor: false,
                  cursorColor: Colors.black,
                  toolbarOptions: ToolbarOptions(
                      copy: true, selectAll: true, cut: false, paste: false),
                  style: TextStyle(
                    fontSize: isSmallScreen ? 26 : 30,
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
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Responsive(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Div(
                      divison: Division(
                        colXL: 6,
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Bachelor Degree with specialization in Software Development and UI application design.",
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 18 : 22,
                                      color: ThemeCyzed.textWhiteSec,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/logoAmikom.png',
                                    height: isSmallScreen ? 100 : 200,
                                    width: isSmallScreen ? 150 : 300,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Amikom Purwokerto University",
                                              style: TextStyle(
                                                fontSize:
                                                    isSmallScreen ? 18 : 22,
                                                color: ThemeCyzed.button,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Information Systems",
                                              style: TextStyle(
                                                fontSize:
                                                    isSmallScreen ? 18 : 22,
                                                color: ThemeCyzed.button,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "2018 - 2022",
                                              style: TextStyle(
                                                fontSize:
                                                    isSmallScreen ? 18 : 22,
                                                color: ThemeCyzed.button,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "GPA: 3.66",
                                              style: TextStyle(
                                                fontSize:
                                                    isSmallScreen ? 18 : 22,
                                                color: ThemeCyzed.button,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Div(
                      divison: Division(
                        colXL: 6,
                      ),
                      child: Container(
                        child: Image.asset(
                          'assets/images/zidanWisuda.png',
                          width: isSmallScreen ? 150 : 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    ));
  }
}
