import 'package:flutter/material.dart';
import 'package:itmeet/models/event_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class RegistrationFormView extends StatefulWidget {
  final EventModel event;

  const RegistrationFormView({
    @required this.event,
  });

  @override
  _RegistrationFormViewState createState() => _RegistrationFormViewState();
}

class _RegistrationFormViewState extends State<RegistrationFormView> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.event.name,
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
          child: Stack(
            children: <Widget>[
              InAppWebView(
                initialUrl: widget.event.formURL,
                onLoadStop: (InAppWebViewController controller, String url) {
                  setState(() {
                    isLoading = false;
                  });
                },
              ),
              isLoading
                  ? Container(
                      color: Color(0xFF1A0551),
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
