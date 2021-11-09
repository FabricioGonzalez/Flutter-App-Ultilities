import 'package:exemplo/app/home_module/Widgets/SideMenu/bottom_menu_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      bottomNavigationBar: BottomMenuBar(),
      body: Center(
        child: Text('This is initial page'),
      ),
    );
  }
}
