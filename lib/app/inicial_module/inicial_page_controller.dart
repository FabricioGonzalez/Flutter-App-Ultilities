import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'inicial_page_controller.g.dart';

class InicialPageController = ControllerBase with _$InicialPageController;

abstract class ControllerBase with Store implements Disposable {
  final pageViewController = PageController();

  @override
  void dispose() {
    pageViewController.dispose();
  }

  @observable
  int index = 0;

  @action
  void changeIndex(int index) {
    index = index;
  }
}
