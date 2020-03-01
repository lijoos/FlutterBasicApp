import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './questions.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//public class MyAppState extends State<MyApp>{
//private  class _MyAppState extends State<MyApp>{
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favouritr color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'White', 'score': 20},
          {'text': 'Red', 'score': 13}
        ]
      },
      {
        'questionText': 'What\'s your favouritr Animal?',
        'answers': [
          {'text': 'Lion', 'score': 10},
          {'text': 'ElePhant', 'score': 20},
          {'text': 'Tiger', 'score': 13}
        ]
      },
      {
        'questionText': 'What\'s your favouritr Subject?',
        'answers': [
          {'text': 'English', 'score': 10},
          {'text': 'Maths', 'score': 20},
          {'text': 'Hindi', 'score': 13}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('MyfirstApp'),
      ),
      body: questionIndex < questions.length
          ? Quiz(
              questionIndex: questionIndex,
              answerQuestion: _answerQuestion,
              questions: questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
