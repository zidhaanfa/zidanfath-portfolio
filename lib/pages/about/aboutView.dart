import 'package:cyzedlabs_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../components/appBar.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  static const String route = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                ResponsiveGridList(
                    minItemsPerRow:
                        1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow:
                        2, // The maximum items to show in a single row. Can be useful on large screens
                    minItemWidth: 200,
                    listViewBuilderOptions: ListViewBuilderOptions(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true),
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/fotoZidan.png',
                            fit: BoxFit.cover,
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          children: [
                            Container(
                              child: const Text('data'),
                            ),
                            Container(
                              child: const Text('data'),
                            ),
                            Container(
                              child: const Text('data'),
                            ),
                          ],
                        ),
                      ),
                    ]),
                Responsive(children: <Widget>[
                  Div(
                    divison: Division(
                      colXL: 6,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/fotoZidan.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                  Div(
                    divison: Division(
                      colXL: 6,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2,
                      child: Card(
                          child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.album),
                            title: const Text('The Enchanted Nightingale'),
                            subtitle: const Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                        ],
                      )),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
