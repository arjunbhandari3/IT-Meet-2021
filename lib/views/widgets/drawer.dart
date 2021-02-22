import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmeet/core/controllers/auth_controller.dart';

class DrawerWidget extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Container(),
    );
  }
}
