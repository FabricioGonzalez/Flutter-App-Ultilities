import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Note App ',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    ).modular();
  }
}
