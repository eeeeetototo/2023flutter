import 'package:ch8/MyCustomForm.dart';
import 'package:ch8/MyForm.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyCustomForm()
      home: Scaffold(
        appBar: AppBar(
          title: Text('폼 검증 데모'),
          backgroundColor: Colors.purple,
        ),
        body: MyForm(),
      ),
    );
  }
}


