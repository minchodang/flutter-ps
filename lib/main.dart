import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat/main_screen.dart';

void main() {
  runApp(MyApp());
}

final rootScaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather application',
      scaffoldMessengerKey: rootScaffoldKey,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginSignupScreen(),
    );
  }
}
