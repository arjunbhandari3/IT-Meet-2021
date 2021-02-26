import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:itmeet/core/controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF1A0551), Color(0xFF3E0765)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              height: Get.height,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/logo.png',
                                width: Get.width * 0.5,
                                height: Get.height * 0.2,
                              ),
                              GradientText(
                                "IT MEET 2021",
                                gradient: LinearGradient(colors: [
                                  Color(0xFF29B6E3),
                                  Color(0xFFF404FE),
                                ]),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  letterSpacing: 2,
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'नवदृष्टि: Unraveling New Perspectives',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * .1),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Please sign in to continue",
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          controller.loading.value
                              ? CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                )
                              : Container(
                                  height: 60.0,
                                  child: OutlineButton(
                                    splashColor: Colors.grey[300],
                                    onPressed: () {
                                      controller.googleSignInMethod();
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    padding: EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xff13C8E0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 300.0,
                                          minHeight: 70.0,
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/images/google_logo.png",
                                              height: 22.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                'Sign In with Google',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 21.0,
                                                  color: Color(0xFF1D035F),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          SizedBox(height: Get.height * .01),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
