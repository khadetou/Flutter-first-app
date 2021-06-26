import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'What\'s your favorite color',
    'What\'s your favorite Animal'
  ];
  var _questionsIndex = 0;

  void _questionHandler() {
    setState(() {
      if (_questionsIndex == questions.length - 1) {
        _questionsIndex = 0;
      } else {
        _questionsIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]),
            Answer(_questionHandler, 'Button 1'),
            Answer(_questionHandler, 'Button 2'),
            Answer(_questionHandler, 'Button 3')
          ],
        ),
      ),
    );
  }
}
