import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class SponsorsView extends StatefulWidget {
  @override
  _SponsorsViewState createState() => _SponsorsViewState();
}

class _SponsorsViewState extends State<SponsorsView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 20.0),
      child: Container(
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GridView.count(
                primary: true,
                padding: const EdgeInsets.all(15.0),
                crossAxisSpacing: 50.0,
                mainAxisSpacing: 20,
                crossAxisCount: 3,
                children: <Widget>[
                  Image.asset('assets/images/google_logo.png'),
                  Image.asset('assets/images/google_logo.png'),
                  Image.asset('assets/images/google_logo.png'),
                  Image.asset('assets/images/google_logo.png'),
                  Image.asset('assets/images/google_logo.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
