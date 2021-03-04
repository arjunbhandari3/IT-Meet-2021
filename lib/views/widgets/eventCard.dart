import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itmeet/utils/themes.dart';

class EventCard extends StatelessWidget {
  final Function onPressed;
  final String logo;
  final String name;

  const EventCard({Key key, this.onPressed, this.logo, this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color = colors[Random().nextInt(4)];
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onPressed,
      child: Ink(
        height: Get.height * 0.2,
        width: Get.width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: color,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                logo != null ? logo : 'assets/images/logo.png',
                width: Get.width * 0.4,
                height: Get.height * 0.1,
              ),
              SizedBox(height: 5),
              Expanded(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
