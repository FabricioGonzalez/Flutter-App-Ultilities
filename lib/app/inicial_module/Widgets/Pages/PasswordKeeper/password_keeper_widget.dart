import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class PasswordKeeperPage extends StatelessWidget {
  Widget craeteDialog(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800),
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Row(children: <Widget>[]),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PasswordKeeper'),
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
      body: Container(
        child: Row(
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context, builder: (context) => craeteDialog(context));
        },
      ),
    );
  }
}
