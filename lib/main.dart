import 'package:flutter/material.dart';
import 'package:sateless_statefull/Homepage.dart';
//import 'package:com.miswag.stateless_statefull';



void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}