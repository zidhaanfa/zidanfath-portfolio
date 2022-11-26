import 'package:cyzedlabs_portfolio/main.dart';
import 'package:cyzedlabs_portfolio/pages/project/listDesign.dart';
import 'package:cyzedlabs_portfolio/pages/project/listProject.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  _ProjectViewState createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      print('selectedIndex ${tabController.index}');
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          bottom: TabBar(
            enableFeedback: false,
            overlayColor: MaterialStateProperty.all<Color>(ThemeCyzed.card),
            controller: tabController,
            labelColor: ThemeCyzed.textBlack,
            unselectedLabelColor: ThemeCyzed.textWhite.withOpacity(0.5),
            labelStyle: TextStyle(
              fontSize: isSmallScreen ? 18 : 20,
              fontWeight: FontWeight.w600,
            ),
            indicatorColor: ThemeCyzed.card,
            indicatorPadding: const EdgeInsets.all(4),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ThemeCyzed.button,
            ),
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Project",
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Design",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListProject(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListDesign(),
        ),
      ]),
    );
  }
}
