import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:itmeet/models/event_model.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:itmeet/views/widgets/registration_form.dart';

class EventDetails extends StatefulWidget {
  final EventModel event;

  const EventDetails({
    @required this.event,
  });

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
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
                initialUrl: widget.event.url,
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
        floatingActionButton: !isLoading
            ? FloatingActionButton.extended(
                onPressed: () {
                  Get.to(RegistrationFormView(event: widget.event));
                },
                icon: Icon(
                  Icons.edit_outlined,
                  color: Colors.white,
                  size: 27,
                ),
                label: Text(
                  "Register Now",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Color(0xFF345DE2),
                elevation: 5,
                splashColor: Colors.grey,
              )
            : Container(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
