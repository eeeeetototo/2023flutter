import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: HelloPage()
    );
  }
}

class HelloPage extends StatefulWidget{
  late String title;

  HelloPage({super.key, String title}){
    this.title = title;
  }

  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text(
        message,
        style: TextStyle(fontSize: 58),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icon.add),
        Onpressed: (){
          setState(() {
          message = "헬로 월드";
             }
        }
      ),
    );
  }

  void ChangeMessage(){
    setState(() {
      message = "헬로 월드";
    });
  }
}