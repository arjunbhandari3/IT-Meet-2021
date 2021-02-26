import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:itmeet/views/widgets/eventCard.dart';
import 'package:itmeet/views/widgets/event_details.dart';
import 'package:itmeet/core/controllers/event_controller.dart';

class EventsView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    return controller.loading.value
        ? Container(
            color: Color(0xFF1A0551),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          )
        : SingleChildScrollView(
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
                itemCount:
                    controller.events == null ? 0 : controller.events.length,
                itemBuilder: (BuildContext context, int i) {
                  return EventCard(
                    logo: controller.events[i].logo,
                    name: controller.events[i].name,
                    color: i.isOdd ? Colors.lime : Colors.redAccent,
                    onPressed: () {
                      Get.to(EventDetails(event: controller.events[i]));
                    },
                  );
                },
              ),
            ),
          );
  }
}
