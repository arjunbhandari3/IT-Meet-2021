import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String url;

  const SocialMediaButton({
    @required this.icon,
    @required this.url,
  });

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 2.0,
            color: Colors.white,
          ),
        ),
        child: Icon(
          icon,
          size: 20.0,
          color: Colors.white,
        ),
      ),
      onTap: () async {
        _launchURL(url);
      },
    );
  }
}
