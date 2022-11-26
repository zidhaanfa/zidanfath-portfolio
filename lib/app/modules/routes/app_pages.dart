import 'package:get/get.dart';

import '../skill/bindings/skillBindings.dart';
import '../skill/skill.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SKILLS,
      page: () => SkillsView(),
      binding: SkillBindings(),
    ),
  ];
}
