import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;
  final Color color;

  const EventCard({Key key, this.onPressed, this.image, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                image != null ? image : 'assets/images/logo.png',
                width: Get.width * 0.4,
                height: Get.height * 0.1,
              ),
              SizedBox(height: 5),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  // textAlign: TextAlign.center,
                  // style: TextStyle(
                  //   fontSize: 17,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.white,
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}