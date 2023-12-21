import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice.dart';
import 'package:flutter_application_1/screens/key/KeyLogin.dart';
import 'package:flutter_application_1/screens/key/MyKey.dart';
import 'package:flutter_application_1/screens/key/ScaffoldKey.dart';

void main() {
  runApp(MyApp());
}

final rootScaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scaffold key',
      scaffoldMessengerKey: rootScaffoldKey,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ScaffoldKey(),
    );
  }
}
