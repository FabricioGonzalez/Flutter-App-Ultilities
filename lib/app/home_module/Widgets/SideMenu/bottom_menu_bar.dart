import 'package:flutter/material.dart';

enum Pages {
  home,
  notepad,
  todo,
  passwordKeeper,
}

class BottomMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return BottomNavigationBar(
      onTap: (index1) {
        if (index1 == Pages.home.index) {
          Navigator.pushNamed(_, '/');
        }
        if (index1 == Pages.notepad.index) {
          Navigator.pushNamed(_, '/notepad/');
        }
        if (index1 == Pages.todo.index) {
          Navigator.pushNamed(_, '/todo/');
        }
        if (index1 == Pages.passwordKeeper.index) {
          Navigator.pushNamed(_, '/passwordkeeper/');
        }
      },
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), label: "Inicio"),
        BottomNavigationBarItem(
            icon: Icon(IconData(
              0xe449,
              fontFamily: 'MaterialIcons',
              matchTextDirection: true,
            )),
            label: "Bloco de Notas"),
        BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_rounded), label: "Lista de Tarefas"),
        BottomNavigationBarItem(
            icon: Icon(IconData(0xe3ae, fontFamily: 'MaterialIcons')),
            label: "Cofre")
      ],
    );
  }
}
