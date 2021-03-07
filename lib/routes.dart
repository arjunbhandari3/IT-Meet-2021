import 'package:get/get.dart';
import 'package:itmeet/views/developers_view.dart';
import 'package:itmeet/views/events_view.dart';
import 'package:itmeet/views/faq_view.dart';
import 'package:itmeet/views/home_view.dart';
import 'package:itmeet/views/login_view.dart';
import 'package:itmeet/views/map_view.dart';
import 'package:itmeet/views/news_view.dart';
import 'package:itmeet/views/root_view.dart';
import 'package:itmeet/views/splash_view.dart';
import 'package:itmeet/views/sponsors_view.dart';

abstract class AppRoutes {
  static final routes = [
    GetPage(name: '/splashView', page: () => SplashView()),
    GetPage(name: '/loginView', page: () => LoginView()),
    GetPage(name: '/rootView', page: () => RootView()),
    GetPage(name: '/homeView', page: () => HomeView()),
    GetPage(name: '/eventsView', page: () => EventsView()),
    GetPage(name: '/sponsorsView', page: () => SponsorsView()),
    GetPage(name: '/newsView', page: () => NewsView()),
    GetPage(name: '/faqView', page: () => FAQView()),
    GetPage(name: '/developersView', page: () => DevelopersView()),
    GetPage(name: '/mapView', page: () => MapView()),
  ];
}
