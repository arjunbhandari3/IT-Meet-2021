import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:itmeet/views/home_view.dart';
import 'package:itmeet/views/sponsors_view.dart';
import 'package:itmeet/views/events_view.dart';
import 'package:itmeet/views/news_view.dart';
import 'package:itmeet/views/faq_view.dart';

class RootController extends GetxController {
  final _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;

  List<Widget> _bodyContents = [
    HomeView(),
    EventsView(),
    SponsorsView(),
    NewsView(),
    FaqView()
  ];
  List<String> _titleContents = ["Home", "Events", "Sponsors", "News", "FAQ"];

  Widget get currentView => _bodyContents[this._selectedIndex.value];
  String get currentTitle => _titleContents[this._selectedIndex.value];
}
