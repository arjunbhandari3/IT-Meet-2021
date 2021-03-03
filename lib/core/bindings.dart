import 'package:itmeet/core/controllers/auth_controller.dart';
import 'package:itmeet/core/controllers/root_controller.dart';
import 'package:itmeet/core/controllers/event_controller.dart';
import 'package:itmeet/core/controllers/sponsor_controller.dart';
import 'package:itmeet/core/controllers/faq_controller.dart';
import 'package:itmeet/core/controllers/map_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.lazyPut(() => RootController(), fenix: true);
    Get.lazyPut(() => EventController(), fenix: true);
    Get.lazyPut(() => SponsorController(), fenix: true);
    Get.lazyPut(() => FAQController(), fenix: true);
    Get.lazyPut(() => MapController(), fenix: true);
  }
}
