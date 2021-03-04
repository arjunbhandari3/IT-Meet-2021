import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:itmeet/models/social_model.dart';
import 'package:itmeet/utils/themes.dart';

class PersonCard extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final List<SocialModel> socials;

  const PersonCard({
    Key key,
    @required this.name,
    @required this.image,
    @required this.desc,
    this.socials,
  }) : super(key: key);

  List<Widget> generateIcons(List<SocialModel> socials) {
    var list = <Widget>[];
    socials.forEach((element) {
      list.add(socialWidget(element));
    });
    return list;
  }

  Widget socialWidget(SocialModel element) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _launchURL(element.url),
        child: Icon(
          getIcon(element.icon),
        ),
      ),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  getIcon(String iconName) {
    switch (iconName) {
      case 'linkedin':
        return FontAwesome.linkedin;
        break;
      case 'facebook':
        return FontAwesome.facebook;
        break;
      case 'website':
        return FontAwesome.globe;
        break;
      case 'twitter':
        return FontAwesome.twitter;
        break;
      case 'github':
        return FontAwesome.github;
        break;
      case 'instagram':
        return FontAwesome.instagram;
        break;
      default:
        return FontAwesome.chrome;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = colors[Random().nextInt(4)];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shadowColor: color,
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image ?? 'assets/images/logo.png',
                    height: 120,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name ?? '',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF1A0551),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: color,
                    thickness: 5,
                    endIndent: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    desc ?? '',
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: generateIcons(socials),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
