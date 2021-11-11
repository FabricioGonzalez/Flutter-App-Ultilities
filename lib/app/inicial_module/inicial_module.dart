import 'package:exemplo/app/inicial_module/Widgets/Pages/Todo/Controllers/dialog_todo_controller.dart';
import 'package:exemplo/app/inicial_module/inicial_widget.dart';
import 'package:exemplo/app/inicial_module/inicial_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'Widgets/Pages/Todo/Controllers/todo_controller.dart';

class InicialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => InicialPageController()),
    Bind((i) => DialogTodoController()),
    Bind((i) => TodoController()),
  ];

  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => InicialPage()),
      ];
}
