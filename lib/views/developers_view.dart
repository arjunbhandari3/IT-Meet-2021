import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itmeet/views/widgets/person_card.dart';

import 'package:itmeet/models/social_model.dart';

class DevelopersView extends StatelessWidget {
  final List developers = [
    {
      "name": "Arjun Bhandari",
      "image": "assets/images/Arjun.jpg",
      "desc": "Flutter Developer / Dart Community Coordinator at KU",
      "socials": [
        SocialModel(
          name: "Github",
          icon: "github",
          url: "https://github.com/arjunbhandari3",
        ),
        SocialModel(
          name: "Website",
          icon: "website",
          url: "https://www.bhandariarjun.com.np/",
        ),
        SocialModel(
          name: "Facebook",
          icon: "facebook",
          url: "https://www.facebook.com/arjun.bhandari.7505",
        ),
        SocialModel(
          name: "Instagram",
          icon: "instagram",
          url: "https://www.instagram.com/_arjun_bhandari_/",
        ),
        SocialModel(
          name: "LinkedIn",
          icon: "linkedin",
          url: "https://www.linkedin.com/in/arjun-bhandari-712334156/",
        ),
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF1A0551), Color(0xFF3E0765)],
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Developers",
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
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "IT Meet 2021 Official App",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Center(
                      child: Text(
                        "Made with ♥ by",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: developers.length,
                      itemBuilder: (context, index) {
                        return PersonCard(
                          name: developers[index]['name'],
                          image: developers[index]['image'],
                          desc: developers[index]['desc'],
                          socials: developers[index]['socials'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
