import 'package:slidy2/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy2/app/app_widget.dart';
import 'package:slidy2/app/modules/home/home_module.dart';
import 'package:slidy2/app/modules/shared/auth/auth_controller.dart';
import 'package:slidy2/app/modules/shared/auth/repositories/auth_repository.dart';
import 'package:slidy2/app/modules/shared/auth/repositories/auth_repository_interface.dart';
import 'package:slidy2/app/modules/shared/repositories/localstorage/local_storage_hive.dart';
import 'package:slidy2/app/modules/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:slidy2/app/modules/shared/repositories/localstorage/local_storage_share.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        // Bind((i) => LocalStorageHive()),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),

      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
