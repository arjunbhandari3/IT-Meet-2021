import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:itmeet/views/widgets/eventCard.dart';
import 'package:itmeet/views/widgets/event_details.dart';

class EventsView extends StatelessWidget {
  final List events = [
    {
      "title": "Code Camp",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Coding Competition",
      "image": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=coding-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Coding Tournament",
      "image": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=coding-tournament",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Software Competition",
      "image": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=software-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Dessign Competition",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "AI Competition",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=ai-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "IT Quiz",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=it-quiz",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Start up Competition",
      "image": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=startup-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Virtual Alumni Meet",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=alumni-meet",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Photography Competition",
      "image": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=photography-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Localization Event",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Penetration Testing",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Career Fair",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Developer Conference",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "title": "Talk Shows (Conference)",
      "image": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: Get.width / (Get.height / 2.25),
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
          ),
          itemCount: events == null ? 0 : events.length,
          itemBuilder: (BuildContext context, int i) {
            return EventCard(
              image: events[i]['image'],
              title: events[i]['title'],
              color: i.isOdd ? Colors.lime : Colors.redAccent,
              onPressed: () {
                Get.to(EventDetails(
                  title: events[i]['title'],
                  url: events[i]['url'],
                  formURL: events[i]['formURL'],
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
