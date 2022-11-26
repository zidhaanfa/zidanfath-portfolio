import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../../theme/theme.dart';
import '../controllers/components_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterView extends GetView<ComponentsController> {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailForm = GlobalKey<FormState>();
    final ComponentsController data = Get.put(ComponentsController());
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
                                    fontSize: data.lebar ? 18 : 20,
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
                                    fontSize: data.lebar ? 15 : 16,
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
                                    fontSize: data.lebar ? 18 : 20,
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
                                    fontSize: data.lebar ? 15 : 16,
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
                                    fontSize: data.lebar ? 18 : 20,
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
                                    fontSize: data.lebar ? 15 : 16,
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
                            height: data.lebar ? 50 : 70,
                            child: TextFormField(
                              controller: data.email,
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
                                      if (data.email.text == '') {
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
                                          .hasMatch(data.email.value.text)) {
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
                                          data.sendEmail();
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
                            height: data.lebar ? 130 : 180,
                            width: data.lebar ? 200 : 300,
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
                                    fontSize: data.lebar ? 16 : 17,
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
                                  fontSize: data.lebar ? 16 : 17,
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
                                    size: data.lebar ? 22 : 25,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: data.lebar ? 22 : 25,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: Colors.white,
                                    size: data.lebar ? 22 : 25,
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
