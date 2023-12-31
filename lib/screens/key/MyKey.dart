import 'package:flutter/material.dart';

class MyKey extends StatelessWidget {
  final counterKey = GlobalKey<_CounterState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global key'),
      ),
      body: Center(
        child: Counter(
          key: counterKey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          counterKey.currentState?.increment();
          print(counterKey.currentState?.count);
        },
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Count number: $count',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
