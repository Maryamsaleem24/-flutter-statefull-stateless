import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String valueA = '1';
  String valueB = '2';
  String valueC = '3';

  void _shiftValue(String from) {
    setState(() {
      if (from == 'A') {
        String temp = valueA;
        valueA = valueB;
        valueB = valueC;
        valueC = temp;
      } else if (from == 'B') {
        String temp = valueB;
        valueB = valueC;
        valueC = valueA;
        valueA = temp;
      } else if (from == 'C') {
        String temp = valueC;
        valueC = valueA;
        valueA = valueB;
        valueB = temp;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetA(value: valueA, onPressed: () => _shiftValue('A')),
          SizedBox(height: 20),
          WidgetB(value: valueB, onPressed: () => _shiftValue('B')),
          SizedBox(height: 20),
          WidgetC(value: valueC, onPressed: () => _shiftValue('C')),
        ],
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;

  WidgetA({required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.red[100],
      child: Column(
        children: [
          Text('Widget A: $value', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Shift from A'),
          ),
        ],
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;

  WidgetB({required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.green[100],
      child: Column(
        children: [
          Text('Widget B: $value', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Shift from B'),
          ),
        ],
      ),
    );
  }
}

class WidgetC extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;

  WidgetC({required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue[100],
      child: Column(
        children: [
          Text('Widget C: $value', style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Shift from C'),
          ),
        ],
      ),
    );
  }
}