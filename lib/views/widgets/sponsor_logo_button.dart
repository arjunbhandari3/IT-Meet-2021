import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorLogoButton extends StatelessWidget {
  final String logo;
  final String url;

  const SponsorLogoButton({
    @required this.logo,
    @required this.url,
  });

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 60.0,
        width: 60.0,
        color: Colors.transparent,
        child: Image.asset(
          logo ?? 'assets/images/google_logo.png',
          height: 20,
          width: 20,
        ),
      ),
      onTap: () async {
        _launchURL(url);
      },
    );
  }
}
