import 'package:exemplo/app/inicial_module/Widgets/Pages/Home/home_widgets.dart';
import 'package:exemplo/app/inicial_module/Widgets/Pages/Notepad/note_pad_widget.dart';
import 'package:exemplo/app/inicial_module/Widgets/Pages/PasswordKeeper/password_keeper_widget.dart';
import 'package:exemplo/app/inicial_module/inicial_page_controller.dart';
import 'Widgets/Pages/Todo/todo_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState
    extends ModularState<InicialPage, InicialPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [HomePage(), NotePadPage(), ToDoPage(), PasswordKeeperPage()],
        controller: controller.pageViewController,
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, child) => BottomNavigationBar(
                onTap: (index) {
                  controller.pageViewController.jumpToPage(index);
                },
                currentIndex: controller.pageViewController.page?.round() ?? 0,
                fixedColor: Colors.grey.shade900,
                unselectedItemColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_rounded),
                      label: "Inicio",
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: Icon(IconData(
                        0xe449,
                        fontFamily: 'MaterialIcons',
                        matchTextDirection: true,
                      )),
                      label: "Bloco de Notas",
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.sticky_note_2_rounded),
                      label: "Lista de Tarefas",
                      backgroundColor: Colors.grey),
                  BottomNavigationBarItem(
                      icon: Icon(IconData(0xe3ae, fontFamily: 'MaterialIcons')),
                      label: "Cofre",
                      backgroundColor: Colors.grey)
                ],
              )),
    );
  }
}
