// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on ControllerBase, Store {
  final _$todosAtom = Atom(name: 'ControllerBase.todos');

  @override
  ObservableList<TodoModel> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoModel> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$filteredTodosAtom = Atom(name: 'ControllerBase.filteredTodos');

  @override
  ObservableList<TodoModel> get filteredTodos {
    _$filteredTodosAtom.reportRead();
    return super.filteredTodos;
  }

  @override
  set filteredTodos(ObservableList<TodoModel> value) {
    _$filteredTodosAtom.reportWrite(value, super.filteredTodos, () {
      super.filteredTodos = value;
    });
  }

  final _$checkedAtom = Atom(name: 'ControllerBase.checked');

  @override
  bool get checked {
    _$checkedAtom.reportRead();
    return super.checked;
  }

  @override
  set checked(bool value) {
    _$checkedAtom.reportWrite(value, super.checked, () {
      super.checked = value;
    });
  }

  final _$activeFilterAtom = Atom(name: 'ControllerBase.activeFilter');

  @override
  String get activeFilter {
    _$activeFilterAtom.reportRead();
    return super.activeFilter;
  }

  @override
  set activeFilter(String value) {
    _$activeFilterAtom.reportWrite(value, super.activeFilter, () {
      super.activeFilter = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  void setFilter(String filter) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setFilter');
    try {
      return super.setFilter(filter);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo(
      {String date = '',
      bool done = false,
      String task = '',
      String limitDate = ''}) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.addTodo');
    try {
      return super
          .addTodo(date: date, done: done, task: task, limitDate: limitDate);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterTodo(String filter) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.filterTodo');
    try {
      return super.filterTodo(filter);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
filteredTodos: ${filteredTodos},
checked: ${checked},
activeFilter: ${activeFilter}
    ''';
  }
}
