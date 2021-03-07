import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmeet/core/controllers/auth_controller.dart';

class DrawerWidget extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: controller.loading.value == true
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                : UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF1A0551), Color(0xFF3E0765)],
                      ),
                    ),
                    accountName: Text(
                      controller.user.displayName ?? "Guest",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Text(
                      controller.user.email ?? '',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      backgroundImage: NetworkImage(controller.user.photoURL),
                    ),
                  ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.description,
                    color: Color(0xFF1A0551),
                  ),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF344968),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.people,
                    color: Color(0xFF1A0551),
                  ),
                  title: Text(
                    "Team",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF344968),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.offAndToNamed('/mapView');
                  },
                  leading: Icon(
                    Icons.pin_drop,
                    color: Color(0xFF1A0551),
                  ),
                  title: Text(
                    "Locate Us",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF344968),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.offAndToNamed('/developersView');
                  },
                  leading: Icon(
                    Icons.code,
                    color: Color(0xFF1A0551),
                  ),
                  title: Text(
                    "Developers",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF344968),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.share,
                    color: Color(0xFF1A0551),
                  ),
                  title: Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF344968),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(
                      onTap: () => controller.signOut(),
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Color(0xFF1A0551),
                      ),
                      title: Text(
                        "Log out",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF344968),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      title: Text(
                        "Version 0.0.1",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFF344968),
                        ),
                      ),
                      trailing: Icon(
                        Icons.remove,
                        color: Color(0xFF1A0551),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
