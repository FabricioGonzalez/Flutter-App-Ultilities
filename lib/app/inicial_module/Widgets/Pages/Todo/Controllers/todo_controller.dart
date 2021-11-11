import 'package:exemplo/app/inicial_module/Widgets/Pages/Todo/models/todo_model.dart';
import 'package:mobx/mobx.dart';
part 'todo_controller.g.dart';

class TodoController = ControllerBase with _$TodoController;

abstract class ControllerBase with Store {
  @observable
  ObservableList<TodoModel> todos = ObservableList.of([]);

  @observable
  ObservableList<TodoModel> filteredTodos = ObservableList.of([]);

  @observable
  bool checked = false;

  String task = '';

  String creationDate = '';

  String limitDate = '';

  @observable
  String activeFilter = "Ativos";

  @action
  void setFilter(String filter) {
    this.activeFilter = filter;
  }

  @action
  void addTodo(
      {String date = '',
      bool done = false,
      String task = '',
      String limitDate = ''}) {
    todos.add(new TodoModel(
        date: date, done: done, task: task, limitDate: limitDate));
  }

  @action
  void filterTodo(String filter) {
    if (filteredTodos.length > 0) {
      filteredTodos.clear();
    }

    if (todos.isNotEmpty) {
      todos.forEach((element) {
        if (filter == "Ativos" && !element.done) {
          print("Ativos");
          filteredTodos.add(element);
        }
        if (filter == "Feito" && element.done) {
          print("Feitos");
          filteredTodos.add(element);
        }
        if (filter == "Expirado" &&
            DateTime.parse(element.limitDate).isAfter(DateTime.now())) {
          print("Expirados");
          filteredTodos.add(element);
        }
      });
    } else {
      print("todos Vazio");
    }
  }
}
