import 'package:get/get.dart';
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

  Rx<User> _user = Rx<User>();

  User get user => _user.value;
  User setUser(User user) => _user.value = user;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  void googleSignInMethod() async {
    try {
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
      });
    } catch (e) {
      print(e.message);
      Get.snackbar(
        "Error",
        e.message,
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

  Future<void> sendEmailVerication(user) async {
    await user.sendEmailVerification();
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Get.off(LoginView());
    } catch (e) {
      print(e);
      Get.snackbar(
        "Error",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
