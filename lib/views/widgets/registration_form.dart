import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class RegistrationFormWidget extends StatelessWidget {
  final String title;
  final String formURL;

  const RegistrationFormWidget({
    @required this.title,
    @required this.formURL,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 23.0,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF1A0551),
                  Color(0xFF1A0551),
                  Color(0xFF1A0551),
                  Color(0xFF2F0572),
                ],
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF1A0551),
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: InAppWebView(initialUrl: formURL),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
