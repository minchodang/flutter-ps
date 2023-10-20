import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(
          vertical: 80,
          horizontal: 20,
        ),
        padding: EdgeInsets.all(20),
        child: Text('Hello'),
      )),
    );
  }
}
