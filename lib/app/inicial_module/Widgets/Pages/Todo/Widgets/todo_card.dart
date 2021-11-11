import 'package:exemplo/app/inicial_module/Widgets/Pages/Todo/Controllers/todo_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

  final TodoCardController todoCardController = TodoCardController();

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
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                      // padding: ,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * .03,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  left: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  right: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  top: BorderSide(
                                      color: Colors.grey, width: 1.0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          margin: EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: Text(
                            todoCardController.task,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 1.0),
                              left: BorderSide(color: Colors.grey, width: 1.0),
                              right: BorderSide(color: Colors.grey, width: 1.0),
                              top: BorderSide(color: Colors.grey, width: 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      margin: EdgeInsets.fromLTRB(4, 2, 8, 2),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Feito?"),
                              Observer(
                                builder: (BuildContext context) {
                                  return Checkbox(
                                    onChanged: (value) =>
                                        todoCardController.checkDone(value!),
                                    value: todoCardController.checked,
                                  );
                                },
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                child: Text("Data de Criação"),
                              ),
                              Container(
                                  child: Text(todoCardController.creationDate))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                child: Text("Data Limite"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                child: Text(todoCardController.limitDate),
                              )
                            ])
                      ])),
                ]))));
  }
}
