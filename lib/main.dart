import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
      _questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionsIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionsIndex,
                questionHandler: _questionHandler)
            : Result(),
      ),
    );
  }
}
