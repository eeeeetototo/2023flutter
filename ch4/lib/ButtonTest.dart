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
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add),
          iconSize: 200,
          onPressed: (){
            setState(() {

            });
          }
        ),
      ),
    );
  }
}
