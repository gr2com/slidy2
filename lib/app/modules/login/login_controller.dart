import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy2/app/modules/shared/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  AuthController auth = Modular.get();
  
  @observable
  bool loading = false;

  @action
  void loginWithGoogle() async {
    try {
      loading = true;
      await auth.loginWithGoogle(); 
      Modular.to.pushReplacementNamed('/home');    
    } catch (e) {
      loading = false;
    }

  }
}
