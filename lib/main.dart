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
  final questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'Red', 'Gren', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite Language ?',
      'answers': ['Python', 'Java', 'Javascript', 'Dart'],
    },
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
            Question(
              questions[_questionsIndex]['questionText'] as String,
            ),
            ...(questions[_questionsIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_questionHandler, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
