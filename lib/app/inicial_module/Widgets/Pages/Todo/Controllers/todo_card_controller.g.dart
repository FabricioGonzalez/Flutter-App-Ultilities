// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoCardController on ControllerBase, Store {
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

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  void checkDone(bool value) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.checkDone');
    try {
      return super.checkDone(value);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
checked: ${checked}
    ''';
  }
}
