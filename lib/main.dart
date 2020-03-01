import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

  class MyAppState extends State<MyApp>{
  var questions = ['Whats your favouritr color?', 'Whats your Hobby?'];
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
       questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('MyfirstApp'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3'),
          ),
        ],
      ),
    ));
  }
}
