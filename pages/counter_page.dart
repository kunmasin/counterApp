// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Below is the number of times of clicked on the plus button"),
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Increment Here"),
              )
            ],
          ),
        ));
  }
}
