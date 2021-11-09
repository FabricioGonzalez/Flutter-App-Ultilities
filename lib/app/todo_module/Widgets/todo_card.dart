import 'package:exemplo/app/todo_module/Controllers/todo_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: must_be_immutable
class TodoCard extends StatefulWidget {
  bool checked = false;

  String task = '';

  String creationDate = '';

  String limitDate = '';

  TodoCard(
      {bool checked = false,
      String task = '',
      String creationDate = '',
      String limitDate = ''}) {
    this.checked = checked;
    this.creationDate = creationDate;
    this.limitDate = limitDate;
    this.task = task;
  }

  @override
  _TodoCardState createState() => _TodoCardState(
      checked: checked,
      creationDate: creationDate,
      limitDate: limitDate,
      task: task);
}

class _TodoCardState extends State<TodoCard> {
  _TodoCardState(
      {bool checked = false,
      String task = '',
      String creationDate = '',
      String limitDate = ''}) {
    this.checked = checked;
    this.creationDate = creationDate;
    this.limitDate = limitDate;
    this.task = task;
  }

  bool checked = false;

  String task = '';

  String limitDate = '';

  String creationDate = '';

  final todoCardController = TodoCardController();

  @override
  Widget build(BuildContext context) {
    todoCardController.checked = this.checked;

    todoCardController.creationDate = this.creationDate;
    todoCardController.task = this.task;
    todoCardController.limitDate = this.limitDate;

    return GestureDetector(
        onDoubleTap: () {
          print("double tapped");
        },
        onLongPress: () {
          print('pressed for long time');
        },
        child: Card(
            // margin: EdgeInsetsDirectional.all(4),
            child: Container(
                width: 300,
                height: 150,
                child: Column(children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      // padding: ,
                      children: <Widget>[
                        Text("Tarefa"),
                        Text(todoCardController.task),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Feito?"),
                        Observer(
                          builder: (BuildContext context) {
                            return Checkbox(
                              onChanged: (value) =>
                                  todoCardController.checkDone(value!),
                              value: todoCardController.checked,
                            );
                          },
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Data de Criação"),
                        Text(todoCardController.creationDate)
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Data Limite"),
                        Text(todoCardController.limitDate),
                      ])
                ]))));
  }
}
