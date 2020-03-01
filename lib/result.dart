import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuestions;
  Result(this.totalScore, this.resetQuestions);
  String resultPhrase(int score) {
    String resultPhrase = '';
    if (score < 33) {
      return resultPhrase = 'Yo are Bad';
    } else if (score < 40) {
      return resultPhrase = 'Yo are Avergae';
    } else if (score > 45) {
      return resultPhrase = 'Yo are Excellent';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase(this.totalScore),
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        child: Text('Restart Quiz?'),
        textColor: Colors.blue,
        onPressed: resetQuestions,
      )
    ]));
  }
}
