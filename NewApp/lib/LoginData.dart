import 'package:flutter/material.dart';

class LoginData extends StatelessWidget {
  final double login;
  final double passward;
  const LoginData({super.key, required this.login, required this.passward});

  @override
  Widget build(BuildContext context) {
    final passward = login;
    print('passward');

    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _calcId(passward),
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }

  String _calcId(double passward){
    var result = '로그인 실패';
    if(passward => 1234) {
      result = '로그인 성공';
    } else if (passward)
  }
}