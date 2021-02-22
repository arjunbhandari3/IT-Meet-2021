import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:itmeet/views/widgets/registration_form.dart';

class EventDetails extends StatelessWidget {
  final String title;
  final String url;
  final String formURL;

  const EventDetails({
    @required this.title,
    @required this.url,
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
                  child: InAppWebView(initialUrl: url),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.to(RegistrationFormWidget(
              title: title,
              formURL: formURL,
            ));
          },
          icon: Icon(
            Icons.edit_outlined,
            color: Colors.white,
            size: 29,
          ),
          label: Text(
            "Register Now",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF345DE2),
          elevation: 5,
          splashColor: Colors.grey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
