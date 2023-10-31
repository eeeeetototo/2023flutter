import 'package:ch4/ButtonTest.dart';
import 'package:flutter/material.dart';

class  extends StatefulWidget {
  const ({super.key}) async {
   // TODO: implement
   throw UnimplementedError();
 }

  @override
  Future<State<dynamic>> createState() async => ();
}

class _ButtonTestState extends State<ButtomTest> {
  @override
  Widget build(BuildContext context) {
    Scaffold s = Scaffold(
      appBar: AppBar(
      title: Text('Button Test'),
      backgroundColor: Colors.deepPurple,
    ),
    body: CircleAvatar(
      child: Icon(Icons.person),
      ),
    );

    return s;
  }

  void MyPressed(){
    setState(() {

    });
}
}




