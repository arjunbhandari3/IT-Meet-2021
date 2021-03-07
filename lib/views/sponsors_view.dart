import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:itmeet/views/widgets/sponsor_title.dart';
import 'package:itmeet/views/widgets/sponsor_logo_button.dart';
import 'package:itmeet/core/controllers/sponsor_controller.dart';

class SponsorsView extends GetView<SponsorController> {
  @override
  Widget build(BuildContext context) {
    return controller.loading.value == true
        ? Container(
            color: Color(0xFF1A0551),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          )
        : SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              color: Colors.transparent,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(controller.sponsors.length, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SponsorTitleWidget(
                          title: controller.sponsors[index].title),
                      controller.sponsors[index].sponsors.length >= 4
                          ? GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 4,
                              mainAxisSpacing: 20.0,
                              crossAxisSpacing: 20.0,
                              physics: BouncingScrollPhysics(),
                              children: List.generate(
                                  controller.sponsors[index].sponsors.length,
                                  (i) {
                                return SponsorLogoButton(
                                  logo: controller
                                      .sponsors[index].sponsors[i].logo,
                                  url: controller
                                      .sponsors[index].sponsors[i].url,
                                );
                              }),
                            )
                          : Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: List.generate(
                                    controller.sponsors[index].sponsors.length,
                                    (i) {
                                  return SponsorLogoButton(
                                    logo: controller
                                        .sponsors[index].sponsors[i].logo,
                                    url: controller
                                        .sponsors[index].sponsors[i].url,
                                  );
                                }),
                              ),
                            ),
                    ],
                  );
                }),
              ),
            ),
          );
  }
}
