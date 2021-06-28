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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favorite Language ?',
      'answers': [
        {'text': 'Python', 'score': 8},
        {'text': 'Java', 'score': 7},
        {'text': 'Javascript', 'score': 9},
        {'text': 'Dart', 'score': 6}
      ],
    },
  ];
  var _questionsIndex = 0;
  var _totalScore = 0;

  void _questionHandler(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex++;
    });
  }

  void _resetHandler() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
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
            : Result(
                resultScore: _totalScore,
                handleScore: _resetHandler,
              ),
      ),
    );
  }
}
