import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:itmeet/models/user_model.dart';
import 'package:itmeet/core/services/user_services.dart';
import 'package:itmeet/views/login_view.dart';
import 'package:itmeet/views/root_view.dart';

class AuthController extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;

  String email, password, name;

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  Rx<User> _user = Rx<User>();

  User get user => _user.value;
  set user(User user) => _user.value = user;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  void googleSignInMethod() async {
    try {
      _loading.value = true;
      Get.snackbar(
        "Signing In",
        "Loading",
        showProgressIndicator: true,
        duration: Duration(seconds: 5),
        backgroundColor: Colors.black,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      print(googleUser);
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      await _auth.signInWithCredential(credential).then((user) {
        saveUser(user);
        Get.offAll(RootView());

        _loading.value = false;
      });
    } catch (e) {
      print(e.message);

      _loading.value = false;
      Get.snackbar(
        "Error",
        "Something went wrong. Please try again.",
        backgroundColor: Colors.black,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void saveUser(UserCredential _authResult) async {
    await UserServices().addUserToFireStore(
      UserModel(
        userId: _authResult.user.uid,
        email: _authResult.user.email,
        name: name == null ? _authResult.user.displayName : name,
        pic: _authResult.user.photoURL,
        phone: _authResult.user.phoneNumber ?? '0',
      ),
    );
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Get.off(LoginView());
    } catch (e) {
      print(e);
      Get.snackbar(
        "Error",
        "Something went wrong. Please try again.",
        backgroundColor: Colors.black,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
