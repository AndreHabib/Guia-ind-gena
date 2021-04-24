import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_indigena_modular/app/app_controller.dart';
import 'package:guia_indigena_modular/app/app_widget.dart';
import 'package:guia_indigena_modular/app/pages/home/home_controller.dart';
import 'package:guia_indigena_modular/app/pages/home/home_page.dart';
import 'package:guia_indigena_modular/app/pages/info/info_controller.dart';
import 'package:guia_indigena_modular/app/pages/info/info_page.dart';
import 'package:guia_indigena_modular/app/pages/patrimonyMap/patrimonyMap_controller.dart';
import 'package:guia_indigena_modular/app/pages/patrimonyMap/patrimonyMap_page.dart';
import 'package:guia_indigena_modular/app/pages/splash/splash_controller.dart';
import 'package:guia_indigena_modular/app/pages/splash/splash_page.dart';
import 'package:guia_indigena_modular/app/pages/villageMap/villageMap_controller.dart';
import 'package:guia_indigena_modular/app/pages/villageMap/villageMap_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => SplashController()),
        Bind((i) => HomeController()),
        Bind((i) => InfoController()),
        Bind((i) => PatrimonyMapController()),
        Bind((i) => VillageMapController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/home', child: (_, args) => HomePage()),
        ModularRouter('/info', child: (_, args) => InfoPage()),
        ModularRouter('/patrimony', child: (_, args) => PatrimonyMapPage()),
        ModularRouter('/village', child: (_, args) => VillageMapPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
