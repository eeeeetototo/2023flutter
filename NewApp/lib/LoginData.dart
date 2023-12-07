import 'package:flutter/material.dart';

void LoginData(BuildContext context, Text text) {
  final snackBar = SnackBar(
    content: text,
    backgroundColor: Color.fromARGB(255, 112, 48, 48),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "로그인 성공",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Colors.white,
        ),
      ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "축하합니다",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 80,
              color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
