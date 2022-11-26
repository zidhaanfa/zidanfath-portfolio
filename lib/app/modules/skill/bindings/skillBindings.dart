import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/skillController.dart';


class SkillBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut (() => SkillsController());
  }
}