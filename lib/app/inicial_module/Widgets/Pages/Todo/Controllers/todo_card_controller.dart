import 'package:mobx/mobx.dart';
part 'todo_card_controller.g.dart';

class TodoCardController = ControllerBase with _$TodoCardController;

abstract class ControllerBase with Store {
  ControllerBase(
      {bool checked = false,
      String task = '',
      String creationDate = '',
      String limitDate = ''}) {
    this.checked = checked;
    this.creationDate = creationDate;
    this.limitDate = limitDate;
    this.task = task;
  }

  @observable
  bool checked = false;

  String task = '';

  String creationDate = '';

  String limitDate = '';

  @action
  void checkDone(bool value) {
    this.checked = value;
  }
}
