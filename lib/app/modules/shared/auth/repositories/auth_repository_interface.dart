abstract class IAuthRepository{
  Future getUser();
  Future getGoogleLogin();
  // Future getFacebookLogin();
  Future<String> getToken();
}
