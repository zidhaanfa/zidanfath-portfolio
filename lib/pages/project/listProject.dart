import 'dart:convert';

import 'package:cyzedlabs_portfolio/components/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ListProject extends StatefulWidget {
  const ListProject({Key? key}) : super(key: key);

  @override
  _ListProjectState createState() => _ListProjectState();
}

class _ListProjectState extends State<ListProject> {
  List<dynamic> projectList = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    // print(data);
    setState(() {
      projectList = data['items'];
      print(projectList);
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ResponsiveGridList(
                  minItemsPerRow:
                      1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                  maxItemsPerRow:
                      3, // The maximum items to show in a single row. Can be useful on large screens
                  minItemWidth: 400,
                  listViewBuilderOptions: ListViewBuilderOptions(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true),
                  children: List.generate(
                    projectList.length,
                    (i) => InkWell(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                              child: Image.asset(
                                'assets/images/bannerHomepage.png',
                                height: 160,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: new Text(
                                    "${projectList[i]['name']}",
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Flexible(
                                  child: new Text(
                                    "Rp. ${projectList[i]['description']}",
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 13,
                                      color: Colors.red,
                                    ),
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
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
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
