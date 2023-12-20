import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice.dart';
import 'package:flutter_application_1/screens/key/KeyLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: KeyLogin(),
    );
  }
}
