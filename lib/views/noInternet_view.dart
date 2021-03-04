import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_settings/app_settings.dart';
import 'package:itmeet/core/controllers/connectivity_controller.dart';

class NoInternetView extends GetView<ConnectivityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(height: Get.height * 0.15),
              Container(
                width: Get.width * 0.5,
                height: Get.height * 0.3,
                child: Image(
                  image: AssetImage("assets/images/no_internet.png"),
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Center(
                child: Text(
                  "No Internet Connection",
                  style: TextStyle(
                    color: Color(0xFF1A0551),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Please Check your internet connection",
                  style: TextStyle(
                    color: Color(0xFF1A0551),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                alignment: Alignment.center,
                child: RaisedButton(
                  color: Color(0xFF1A0551),
                  onPressed: () async {
                    AppSettings.openWIFISettings();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Go to Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
