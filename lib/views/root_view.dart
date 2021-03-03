import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:itmeet/core/controllers/root_controller.dart';
import 'package:itmeet/core/controllers/auth_controller.dart';

import 'package:itmeet/views/login_view.dart';

import 'package:itmeet/views/widgets/drawer.dart';
import 'package:itmeet/views/widgets/linearGradientMask.dart';

class RootView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (controller.user == null)
          ? LoginView()
          : GetBuilder<RootController>(
              builder: (rootController) => WillPopScope(
                onWillPop: () async => rootController.onWillPop(),
                child: SafeArea(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF1A0551), Color(0xFF3E0765)],
                      ),
                    ),
                    child: Scaffold(
                      appBar: AppBar(
                        title: Obx(
                          () => Text(
                            rootController.currentTitle,
                            style: GoogleFonts.poppins(
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        flexibleSpace: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF1D035F),
                                Color(0xFF1A0551),
                                Color(0xFF1A0551),
                                Color(0xFF2F0572),
                              ],
                            ),
                          ),
                        ),
                        centerTitle: true,
                        backgroundColor: Color(0xFF1A0551),
                        elevation: 0,
                      ),
                      drawer: DrawerWidget(),
                      backgroundColor: Colors.transparent,
                      body: Obx(() => rootController.currentView),
                      bottomNavigationBar: Obx(
                        () => BottomNavigationBar(
                          backgroundColor: Colors.white,
                          type: BottomNavigationBarType.fixed,
                          selectedItemColor: Color(0xFFB80ABE),
                          selectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                          ),
                          unselectedLabelStyle: TextStyle(
                            color: Color(0xFF9B60EE),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                          selectedFontSize: 17,
                          iconSize: 30.0,
                          unselectedFontSize: 17,
                          items: [
                            BottomNavigationBarItem(
                              icon: LinearGradientMask(
                                child: Icon(Icons.home),
                              ),
                              label: "Home",
                            ),
                            BottomNavigationBarItem(
                              icon: LinearGradientMask(
                                child: Icon(Icons.event),
                              ),
                              label: "Events",
                            ),
                            BottomNavigationBarItem(
                              icon: LinearGradientMask(
                                child: Icon(Icons.loyalty),
                              ),
                              label: "Sponsors",
                            ),
                            BottomNavigationBarItem(
                              icon: LinearGradientMask(
                                child: Icon(Icons.message),
                              ),
                              label: "News",
                            ),
                            BottomNavigationBarItem(
                              icon: LinearGradientMask(
                                child: Icon(Icons.info),
                              ),
                              label: "FAQ",
                            ),
                          ],
                          currentIndex: rootController.selectedIndex,
                          onTap: (index) =>
                              rootController.selectedIndex = index,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
    });
  }
}
