import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool? production;
bool getProduction() {
  return production = false;
}

class UserProvider extends GetConnect {
  var domain = 'http://192.168.18.146:3333/api';
  Future<Response> getSkills() async {
    return await get('$domain/skills/list', headers: {
      // 'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
    });
  }
  Future<Response> getProjects() async {
    return await get('$domain/projects/list', headers: {
      // 'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
    });
  }

  Future<Response> addUser() async {
    return await post('$domain/skill/add', {
      'name': 'Flutter',
      'description':
          'Flutter is a cross-platform UI toolkit that is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. The first version of Flutter was known as codename "Sky" and ran on the Android operating system.',
      'image': 'https://flutter.dev/images/catalog-widget-placeholder.png',
    });
  }

  Future<Response> addEmailSubscribe(String email) async {
    return await post('$domain/emailSubscribers/add', {
      'email': email,
    });
  }
}
