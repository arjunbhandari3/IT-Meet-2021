import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SponsorTitleWidget extends StatelessWidget {
  final String title;

  const SponsorTitleWidget({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                    height: 10,
                  ),
                ),
              ),
              Icon(
                Icons.star,
                size: 20.0,
                color: Colors.white,
              ),
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                    height: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
