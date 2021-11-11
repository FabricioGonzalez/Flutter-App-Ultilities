import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(children: [
            ListTile(
              title: Text("Config"),
            )
          ]),
        ),
      ),
      body: Container(),
    );
  }
}
