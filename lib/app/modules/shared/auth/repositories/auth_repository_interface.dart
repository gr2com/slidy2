import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository{
  Future getUser();
  Future<FirebaseUser> getGoogleLogin();
  // Future getFacebookLogin();
  Future<String> getToken();
}
