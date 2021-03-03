import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmeet/views/widgets/faqItemWidget.dart';
import 'package:itmeet/core/controllers/faq_controller.dart';

class FAQView extends GetView<FAQController> {
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
              alignment: Alignment.topCenter,
              color: Colors.transparent,
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  controller.faqs.length > 0
                      ? Container(
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            primary: false,
                            itemCount: controller.faqs.length,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemBuilder: (context, index) {
                              return FaqItemWidget(faq: controller.faqs[index]);
                            },
                          ),
                        )
                      : Container(
                          color: Color(0xFF1A0551),
                          child: Center(child: Text('No FAQs found')),
                        ),
                ],
              ),
            ),
          );
  }
}
