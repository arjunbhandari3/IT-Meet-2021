import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:itmeet/views/widgets/sponsor_title.dart';
import 'package:itmeet/views/widgets/sponsor_logo_button.dart';

class SponsorsView extends StatefulWidget {
  @override
  _SponsorsViewState createState() => _SponsorsViewState();
}

class _SponsorsViewState extends State<SponsorsView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SponsorTitleWidget(title: "Platinum Sponsors"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "Gold Sponsors"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "Silver Sponsors"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "Bronze Sponsors"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "General Sponsors"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "Supporting Partners"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
            SponsorTitleWidget(title: "Media Partners"),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                  SponsorLogoButton(
                    logo: 'assets/images/google_logo.png',
                    url: "https://www.google.com/",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
