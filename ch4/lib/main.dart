import 'package:flutter/material.dart';
import 'PuzzleUI.dart';
// import 'containerTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ThemeDate t = ThemeData(
        colorScheme: ColorScheme,fromSeed(seedColor: Colors.deepPurple),
         useMaterial3: true
    )
      home: ButtonTest(),
    );
  }
}

