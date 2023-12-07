import 'package:project011/LoginData.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  final _formKey = GlobalKey<FormState>();
  final _idcontroller = TextEditingController();
  final _passwardcontroller = TextEditingController();

void dispose(){
  _idcontroller.dispose();
  _passwardcontroller.dispose();
  super.dispose();
}

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
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '아이디'
                  ),
                  keyboardType: TextInputType.number,
                  controller: _idcontroller,
                  validator: (value){
                    if(value!.trim().isEmpty){
                      return '아이디를 입력하세요,';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '비밀번호'
                  ),
                  keyboardType: TextInputType.number,
                  controller: _passwardcontroller,
                  validator: (value){
                    if(value!.trim().isEmpty){
                      return '비밀번호를 입력하세요,';
                    }
                    return null;
                  },
                ),
              ),
            ),
            ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (_idcontroller.text == 'ak2094@naver.com' &&
                        _passwardcontroller.text == '0910') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NextPage()));
                    }
                    else if (_idcontroller.text == 'ak2094@naver.com' && _idcontroller.text != '0910') {
                      LoginData(context, Text('Wrong password'));
                    }
                    else if (_idcontroller.text != 'ak2094@naver.com' && _passwardcontroller.text == '0910') {
                      LoginData(context, Text('Wrong email'));
                    }
                    else {
                      LoginData(context, Text('Check your info again'));
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent),
                )
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
