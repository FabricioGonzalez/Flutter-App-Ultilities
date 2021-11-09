import 'package:exemplo/app/todo_module/models/todo_model.dart';
import 'package:mobx/mobx.dart';
part 'todo_controller.g.dart';

class TodoController = ControllerBase with _$TodoController;

abstract class ControllerBase with Store {
  @observable
  ObservableList<TodoModel> todos = ObservableList.of([]);

  @observable
  bool checked = false;

  String task = '';

  String creationDate = '';

  String limitDate = '';

  @action
  void addTodo(
      {String date = '',
      bool done = false,
      String task = '',
      String limitDate = ''}) {
    todos.add(new TodoModel(
        date: date, done: done, task: task, limitDate: limitDate));
  }
}
