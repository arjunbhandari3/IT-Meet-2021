import 'package:itmeet/core/controllers/auth_controller.dart';
import 'package:itmeet/core/controllers/root_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<RootController>(RootController(), permanent: true);
  }
}