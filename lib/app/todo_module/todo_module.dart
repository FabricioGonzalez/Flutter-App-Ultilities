import 'package:exemplo/app/todo_module/Controllers/todo_controller.dart';
import 'package:exemplo/app/todo_module/repository/todo_repository.dart';
import 'package:exemplo/app/todo_module/todo_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TodoModule extends Module {
  @override
  List<Bind> get binds =>
      [Bind((i) => TodoRepository()), Bind((i) => TodoController())];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => ToDoPage())];
}
