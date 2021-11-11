import 'package:flutter/material.dart';

class NotePadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notepad'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
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
        body: Container(child: Row(children: <Widget>[])));
  }
}
