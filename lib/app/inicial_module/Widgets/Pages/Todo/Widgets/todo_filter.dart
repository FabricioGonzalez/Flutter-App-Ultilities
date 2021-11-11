import 'package:exemplo/app/inicial_module/Widgets/Pages/Todo/Controllers/todo_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TodoFilterSelector extends StatefulWidget {
  @override
  _TodoFilterSelector createState() => _TodoFilterSelector();
}

class _TodoFilterSelector
    extends ModularState<TodoFilterSelector, TodoController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Observer(builder: (context) {
        return DropdownButton(
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            value: controller.activeFilter,
            underline: Container(
              height: 2,
              color: Colors.black.withAlpha(80),
            ),
            onChanged: (value) {
              controller.setFilter(value.toString());
              controller.filterTodo(value.toString());
            },
            items: [
              DropdownMenuItem(value: 'Ativos', child: Text('Ativo')),
              DropdownMenuItem(value: 'Expirados', child: Text('Expirado')),
              DropdownMenuItem(value: 'Feitos', child: Text('Feito')),
            ]);
      }),
    );
  }
}
