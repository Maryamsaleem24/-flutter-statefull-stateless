import 'package:flutter/material.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  int value1 = 1;
  int value2 = 2;
  int value3 = 3;
  int from= 0;
  int to=0;
  int temp=0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Value Shifting App')),
      body: Column(
        children: [
          Container(
            color: Colors.pinkAccent,
            width: 200,
            height: 100,

            child: ElevatedButton(onPressed: (){
              setState(() {
                if (from == 1 && to == 2) {
                  int temp = value1;
                  value1 = value2;
                  value2 = temp;
                }
                print("action running");
              });

            }, child:Text("Button 1")),
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: 100,
            child: ElevatedButton(onPressed: (){
              setState(() {
                if (from == 1 && to == 3) {
                  int temp = value1;
                  value1 = value3;
                  value3 = temp;
                }
                print("action running");
              });

            }, child:Text("Button 2")),
          ),
          Container(
            color: Colors.grey,
            width: 200,
            height: 100,
            child: ElevatedButton(onPressed: (){
              setState(() {
                if (from == 2 && to == 3) {
                  int temp = value2;
                  value2 = value3;
                  value3 = temp;
                }
                print("action running");
              });

            }, child:Text("Button 3")),
          ),
        ],
      ),
    );
  }
}

