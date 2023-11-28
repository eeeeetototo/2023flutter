import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;
  const BmiResult({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '정상',
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(height: 16,),
          Icon(
            Icons.sentiment_satisfied,
            color: Colors.green,
            size: 100,
          ),
        ],
      ),
    );
  }
}
