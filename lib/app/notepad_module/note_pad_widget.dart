import 'package:exemplo/app/home_module/Widgets/SideMenu/bottom_menu_bar.dart';
import 'package:flutter/material.dart';

class NotePadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Notepad')),
        bottomNavigationBar: BottomMenuBar(),
        body: Container(child: Row(children: <Widget>[])));
  }
}
