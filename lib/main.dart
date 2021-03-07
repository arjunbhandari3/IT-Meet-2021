import 'package:itmeet/core/bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:itmeet/utils/themes.dart';
import 'package:itmeet/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IT Meet 2021',
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      defaultTransition: Transition.rightToLeft,
      getPages: AppRoutes.routes,
      initialRoute: '/splashView',
      theme: theme,
    );
  }
}
