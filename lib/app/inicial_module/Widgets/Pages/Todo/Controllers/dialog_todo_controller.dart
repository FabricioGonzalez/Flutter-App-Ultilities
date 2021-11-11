import 'package:mobx/mobx.dart';

part 'dialog_todo_controller.g.dart';

class DialogTodoController = ControllerBase with _$DialogTodoController;

abstract class ControllerBase with Store {
  @observable
  String task = '';

  @observable
  String limitDate = '';

  @action
  void setTask(String task) {
    this.task = task;
  }

  @action
  void setLimitDate(String limitDate) {
    this.limitDate = limitDate;
  }
}
