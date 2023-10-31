import 'package:flutter/material.dart';

class ButtomTest extends StatefulWidget {
  const ButtomTest({super.key});

  @override
  State<ButtomTest> createState() => _ButtomTestState();
}

class _ButtomTestState extends State<ButtomTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Test'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Image.network('http://bit.ly/2Pvz4t8'),
      );

    return s;
  }

  void MyPressed(){
    setState(() {
    });
  }
}
