import 'dart:ui';

import 'package:animations/animations.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../components/footer.dart';
import '../../theme/theme.dart';
import '../components/views/footer_view.dart';
import '../education/education.dart';
import '../experience/experience.dart';
import '../../app/modules/skill/skill.dart';

class Homepage extends StatelessWidget {
  Homepage({
    Key? key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg3.3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
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
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: ThemeCyzed.textWhite,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontSize: isSmallScreen ? 28 : 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      child: AnimatedTextKit(
                                        isRepeatingAnimation: true,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              speed:
                                                  Duration(milliseconds: 150),
                                              'Muhamad Zidan Fathoni'),
                                        ],
                                        onTap: () {
                                          print("Tap Event");
                                        },
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Hello, I'm Muhamad Zidan Fathoni, Front-End Developer. Focused in Flutter and studying about React Native, VueJs",
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 17 : 21,
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
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          height: isSmallScreen ? 50 : 60,
                                          minWidth: isSmallScreen ? 150 : 200,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Download CV',
                                                style: TextStyle(
                                                  fontSize:
                                                      isSmallScreen ? 16 : 18,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(Icons.download,
                                                  color: Colors.white),
                                            ],
                                          ),
                                          textColor: Colors.white,
                                          color: ThemeCyzed.button,
                                          shape: const StadiumBorder(),
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/fotoZidan.png',
                                  height: isSmallScreen ? 350 : 500,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Experience(),
              Education(),
              SkillsView(),
              FooterView(),
            ],
          ),
        ),
      ),
    );
  }
}
