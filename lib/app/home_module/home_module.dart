import 'package:exemplo/app/home_module/home_widget.dart';
import 'package:exemplo/app/notepad_module/note_pad_module.dart';
import 'package:exemplo/app/password_keeper_module/password_keeper_module.dart';
import 'package:exemplo/app/todo_module/todo_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage()),
        ModuleRoute('/notepad', module: NotePadModule()),
        ModuleRoute('/todo', module: TodoModule()),
        ModuleRoute('/passwordkeeper', module: PasswordKeeperModule()),
      ];
}
