import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../main.dart';
import '../../theme/theme.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  List<dynamic> experienceList = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    // print(data);
    setState(() {
      experienceList = data['experience'];
      print(experienceList);
    });
// ...
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            'assets/images/bg1.png',
          ).image,
          fit: BoxFit.cover,
        ),
        color: ThemeCyzed.whiteBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SelectableText(
                    'Experience',
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
            ResponsiveGridList(
              minItemsPerRow:
                  1, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow:
                  2, // The maximum items to show in a single row. Can be useful on large screens
              minItemWidth: 400,
              listViewBuilderOptions: ListViewBuilderOptions(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true),
              children: List.generate(
                experienceList.length,
                (i) => InkWell(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ThemeCyzed.card,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: new Text(
                                "${experienceList[i]['name']} - ${experienceList[i]['location']}",
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 18 : 20,
                                  color: ThemeCyzed.textWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 4,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: new Text(
                                "${experienceList[i]['position']} - ${experienceList[i]['status']}",
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 17 : 18,
                                  color: ThemeCyzed.textWhite,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: new Text(
                                "${experienceList[i]['description']}",
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 17 : 18,
                                  color: ThemeCyzed.textWhite,
                                ),
                                maxLines: 5,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: new Text(
                                "${experienceList[i]['date']}",
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 17 : 18,
                                  color: ThemeCyzed.textWhite,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    print("tapped on container");
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
