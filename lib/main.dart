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
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          child: Text("go to second page"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          child: Text("go to First page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
