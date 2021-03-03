import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:itmeet/models/faq_model.dart';
import 'package:itmeet/core/services/faq_services.dart';

class FAQController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<FAQModel> get faqs => _faqs;
  List<FAQModel> _faqs = [];

  FAQController() {
    getFAQS();
  }

  // getFAQS() async {
  //   _loading.value = true;
  //   FAQsService().getFAQs().then((value) {
  //     for (int i = 0; i < value.length; i++) {
  //       _faqs.add(FAQModel.fromJson(value[i].data()));
  //       _loading.value = false;
  //     }
  //     update();
  //   });
  // }

  getFAQS() async {
    _loading.value = true;
    for (int i = 0; i < faqsList.length; i++) {
      _faqs.add(FAQModel.fromJson(faqsList[i]));
      _loading.value = false;
    }
    update();
  }

  List faqsList = [
    {
      "title": "What is IT Meet?",
      "content":
          "IT MEET is a non-profit event organized by the students of the Department Of Computer Science and Engineering, Kathmandu University. Visit: http://kucc.ku.edu.np/itmeet",
    },
    {
      "title": "Are the competitions only for KU Students?",
      "content":
          "No, the competition is not only for the students of Kathmandu University.It is open for everyone who is willing to participate.",
    },
    {
      "title": "Are all events open for everyone?",
      "content": "Yes, Anyone can participate in events.",
    },
    {
      "title": "I am not from IT background? Can I participate in events?",
      "content": " Yes, you can.",
    },
  ];
}
