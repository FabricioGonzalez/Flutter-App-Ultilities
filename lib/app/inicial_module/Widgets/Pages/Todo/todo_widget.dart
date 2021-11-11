import 'package:exemplo/app/inicial_module/Widgets/Pages/Todo/Widgets/todo_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'Controllers/dialog_todo_controller.dart';
import 'Controllers/todo_controller.dart';
import 'Widgets/todo_card.dart';

class ToDoPage extends StatelessWidget {
  final TodoController todoList = Modular.get<TodoController>();

  final DialogTodoController dialogTodoController =
      Modular.get<DialogTodoController>();

  Widget craeteDialog(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800),
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Container(
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (String data) {
                          dialogTodoController.setTask(data);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tarefa',
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                        ),
                        onPressed: () async {
                          var date = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2021, 01),
                              initialDate: DateTime.now(),
                              lastDate: DateTime(2021, 12));
                          dialogTodoController.setLimitDate(
                              "${date?.day}/${date?.month}/${date?.year}");
                        },
                        child: Observer(
                            key: key,
                            builder: (_) {
                              var date =
                                  Observable(dialogTodoController.limitDate);
                              return Text(date.value.isEmpty
                                  ? "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}"
                                  : dialogTodoController.limitDate);
                            }),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey),
                          ),
                          onPressed: () {
                            todoList.addTodo(
                                date:
                                    "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                                done: false,
                                limitDate: dialogTodoController.limitDate,
                                task: dialogTodoController.task);

                            dialogTodoController.setLimitDate('');
                            dialogTodoController.setTask('');

                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          child: Text("Criar"))
                    ],
                  )),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[TodoFilterSelector()],
        title: Text('ToDo'),
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(children: [
            ListTile(
              title: Text("Config"),
            )
          ]),
        ),
      ),
      body: Container(
          child: Observer(
        builder: (context) => ListView.builder(
            itemCount: todoList.filteredTodos.length,
            itemBuilder: (_, index) {
              if (todoList.filteredTodos.isNotEmpty)
                return TodoCard(
                  checked: todoList.filteredTodos[index].done,
                  creationDate: todoList.filteredTodos[index].date,
                  limitDate: todoList.filteredTodos[index].limitDate,
                  task: todoList.filteredTodos[index].task,
                );
              return Container(
                child: Text('Vazio'),
              );
            }),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return this.craeteDialog(context);
              });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
