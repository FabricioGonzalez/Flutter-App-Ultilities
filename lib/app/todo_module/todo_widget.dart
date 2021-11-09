import 'package:exemplo/app/home_module/Widgets/SideMenu/bottom_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'Controllers/dialog_todo_controller.dart';
import 'Controllers/todo_controller.dart';
import 'Widgets/todo_card.dart';

class ToDoPage extends StatelessWidget {
  final TodoController todoList = new TodoController();

  final DialogTodoController dialogTodoController = new DialogTodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ToDo')),
      bottomNavigationBar: BottomMenuBar(),
      body: Container(
        child: Observer(
          builder: (context) => ListView.builder(
              itemCount: todoList.todos.length,
              itemBuilder: (_, index) => TodoCard(
                    checked: todoList.todos[index].done,
                    creationDate: todoList.todos[index].date,
                    limitDate: todoList.todos[index].limitDate,
                    task: todoList.todos[index].task,
                  )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
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
                                    var date = Observable(
                                        dialogTodoController.limitDate);
                                    return Text(date.value.isEmpty
                                        ? "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}"
                                        : dialogTodoController.limitDate);
                                  }),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  todoList.addTodo(
                                      date:
                                          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                                      done: false,
                                      limitDate: dialogTodoController.limitDate,
                                      task: dialogTodoController.task);

                                  dialogTodoController.setLimitDate('');
                                  dialogTodoController.setTask('');

                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                                child: Text("Criar"))
                          ],
                        )),
                  );
                });
          },
          child: Icon(Icons.add)),
    );
  }
}
