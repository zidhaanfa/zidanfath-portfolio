import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/components_controller.dart';

class ComponentsView extends GetView<ComponentsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ComponentsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ComponentsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
