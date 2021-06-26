import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var _questionIndex = 0;

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    void answerQuestion() {
      setState(() => (_questionIndex = _questionIndex + 1));
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}
