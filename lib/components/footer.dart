import 'package:cyzedlabs_portfolio/api/api.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../main.dart';
import '../theme/theme.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var _email = TextEditingController();
  final emailForm = GlobalKey<FormState>();

  void _sendEmail() async {
    print(_email.text);
    var response = await UserProvider().addEmailSubscribe(_email.value.text);
    if (response.body['status'] == 'success') {
      print(response.body);
      Get.snackbar('Success', 'Email added successfully');
    } else {
      print(response.body);
      Get.snackbar('Error', 'Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Form(
      key: emailForm,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeCyzed.footerBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Column(
            children: [
              //BAGIAN 1
              Responsive(children: <Widget>[
                Div(
                  divison: Division(
                    colXL: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'About',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 18 : 20,
                                    color: ThemeCyzed.textWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "I have passion in UI/UX Designer and Software Development. Has Experience in building and developing Mobile Apps with flutter, Website with VueJS and backend using AdonisJS, ERP using Odoo and for UI Designs using AdobeXD. Other Experience is being a Scrum Master in Agile SCRUM. For now i try to study and join training and certification to become a Product Owner, and flutter. I try to learn my passion every day.",
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 15 : 16,
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Div(
                  divison: Division(
                    colXL: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'About',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 18 : 20,
                                    color: ThemeCyzed.textWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "I have passion in UI/UX Designer and Software Development. Has Experience in building and developing Mobile Apps with flutter, Website with VueJS and backend using AdonisJS, ERP using Odoo and for UI Designs using AdobeXD. Other Experience is being a Scrum Master in Agile SCRUM. For now i try to study and join training and certification to become a Product Owner, and flutter. I try to learn my passion every day.",
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 15 : 16,
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Div(
                  divison: Division(
                    colXL: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Subscribe',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 18 : 20,
                                    color: ThemeCyzed.textWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  "To get newest information :",
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 15 : 16,
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: isSmallScreen ? 50 : 70,
                            child: TextFormField(
                              controller: _email,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: ThemeCyzed.textWhiteSec,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      if (_email.text == '') {
                                        print('Email Kosong');
                                        Get.snackbar(
                                          'Warning',
                                          'Please enter email address',
                                          colorText: ThemeCyzed.textBlack,
                                          backgroundColor: ThemeCyzed.button,
                                          duration: const Duration(seconds: 3),
                                          icon: Icon(
                                            Icons.warning_amber_rounded,
                                            color: ThemeCyzed.error,
                                          ),
                                          animationDuration: const Duration(
                                              milliseconds: 1000),
                                        );
                                      } else if (!RegExp(r'^[a-z A-Z]+@')
                                          .hasMatch(_email.value.text)) {
                                        Get.snackbar(
                                          'Warning',
                                          'Enter Correct',
                                          colorText: ThemeCyzed.textBlack,
                                          backgroundColor: ThemeCyzed.button,
                                          duration: const Duration(seconds: 3),
                                          icon: Icon(
                                            Icons.warning_amber_rounded,
                                            color: ThemeCyzed.error,
                                          ),
                                          animationDuration: const Duration(
                                              milliseconds: 1000),
                                        );
                                      } else {
                                        if (emailForm.currentState!
                                            .validate()) {
                                          _sendEmail();
                                        }
                                      }
                                    },
                                    icon: Icon(
                                      Icons.send,
                                      color: ThemeCyzed.button,
                                    )),
                              ),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+@').hasMatch(value)) {
                                  return 'Please enter email address';
                                }
                                return null;
                              },
                            ),
                          ),
                          Image.asset(
                            'assets/images/Z3.png',
                            height: isSmallScreen ? 130 : 180,
                            width: isSmallScreen ? 200 : 300,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              //BAGIAN 2
              Responsive(children: <Widget>[
                Div(
                  divison: Division(
                    colXL: 6,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Copyright©2022 All rights reserved | Made by Zidanfath',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: isSmallScreen ? 16 : 17,
                                    color: ThemeCyzed.textWhiteSec,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Div(
                  divison: Division(
                    colXL: 6,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Follow me',
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 16 : 17,
                                  color: ThemeCyzed.textWhiteSec,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: ThemeCyzed.button,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.tiktok,
                                    color: Colors.white,
                                    size: isSmallScreen ? 22 : 25,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: isSmallScreen ? 22 : 25,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: Colors.white,
                                    size: isSmallScreen ? 22 : 25,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
