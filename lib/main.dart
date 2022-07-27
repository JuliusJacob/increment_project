import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter>=1)
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'increment_project',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 144, 42, 44),
        appBar: AppBar(
          title: Text("INCREMENTAL PROJECT"),
          backgroundColor: Color.fromARGB(255, 150, 136, 10),
        ),
        body: Column(
          children: [
            
            Text("You have touch the button this many times"),
            Text('$_counter'),
            TextButton(onPressed: () => _incrementCounter(), child: Text('increment')),
            TextButton(onPressed: () => _decrementCounter(), child: Text('decrement')),
            
        ],
        ),
    
      ),
    );
  }
}
