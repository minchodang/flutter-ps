import 'package:flutter/material.dart';

class CounterStream extends StatefulWidget {
  const CounterStream({super.key});

  @override
  State<CounterStream> createState() => _CounterStreamState();
}

class _CounterStreamState extends State<CounterStream> {
  final int price = 2000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream builder'),
      ),
      body: StreamBuilder<int>(
        initialData: price,
        stream: addStreamValue(),
        builder: (context, snapshot) {
          final priceNumber = snapshot.data.toString();
          return Center(
            child: Text(
              priceNumber,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }

  Stream<int> addStreamValue() {
    return Stream<int>.periodic(
      Duration(seconds: 1),
      (count) => price + count,
    );
  }
}
