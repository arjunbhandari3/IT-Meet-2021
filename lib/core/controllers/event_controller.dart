import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:itmeet/models/event_model.dart';

class EventController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<EventModel> get events => _events;
  List<EventModel> _events = [];

  EventController() {
    getEvents();
  }

  getEvents() async {
    _loading.value = true;
    for (int i = 0; i < eventList.length; i++) {
      _events.add(EventModel.fromJson(eventList[i]));
      _loading.value = false;
    }
    update();
  }

  List eventList = [
    {
      "name": "Code Camp",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Coding Competition",
      "logo": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=coding-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Coding Tournament",
      "logo": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=coding-tournament",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Software Competition",
      "logo": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=software-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Dessign Competition",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "AI Competition",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=ai-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "IT Quiz",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=it-quiz",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Start up Competition",
      "logo": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=startup-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Virtual Alumni Meet",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=alumni-meet",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Photography Competition",
      "logo": "assets/images/logo.png",
      "url":
          "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=photography-competition",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Localization Event",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Penetration Testing",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Career Fair",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Developer Conference",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
    {
      "name": "Talk Shows (Conference)",
      "logo": "assets/images/logo.png",
      "url": "http://kucc.ku.edu.np/itmeet/eventsDetail/?slug=codecamp",
      "formURL": "http://bit.ly/itmeet-photography"
    },
  ];
}
