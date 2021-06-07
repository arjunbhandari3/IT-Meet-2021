import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  var isOnline = true.obs;

  StreamSubscription<ConnectivityResult> subscription;
  @override
  void onInit() {
    getConnect();
    super.onInit();
  }

  void getConnect() async {
    final connectivity = Connectivity();
    var status = await connectivity.checkConnectivity();

    status == ConnectivityResult.none ? isOnline(false) : isOnline(true);
    subscription = connectivity.onConnectivityChanged.listen(
      (ConnectivityResult result) =>
          isOnline.value = result != ConnectivityResult.none,
    );
  }

  @override
  void onClose() {
    super.onClose();

    subscription?.cancel();
  }
}
