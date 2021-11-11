import 'package:exemplo/app/inicial_module/inicial_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: InicialModule()),
      ];

  // Widget get bootstrap => AppWidget();
}
