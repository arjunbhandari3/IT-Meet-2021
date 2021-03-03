import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:itmeet/views/home_view.dart';
import 'package:itmeet/views/sponsors_view.dart';
import 'package:itmeet/views/events_view.dart';
import 'package:itmeet/views/news_view.dart';
import 'package:itmeet/views/faq_view.dart';

class RootController extends GetxController {
  DateTime currentBackPressTime;

  final _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;

  List<Widget> _bodyContents = [
    HomeView(),
    EventsView(),
    SponsorsView(),
    NewsView(),
    FAQView()
  ];

  List<String> _titleContents = ["Home", "Events", "Sponsors", "News", "FAQ"];

  Widget get currentView => _bodyContents[this._selectedIndex.value];
  String get currentTitle => _titleContents[this._selectedIndex.value];

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Get.snackbar(
        null,
        "Tap again to leave",
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return Future.value(false);
    }
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return Future.value(true);
  }
}
