import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '로그인',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text("Login")
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("아이디 찾기")
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("비밀번호 찾기")
            ),
          ],
        ),
      ),
    );
  }
}
