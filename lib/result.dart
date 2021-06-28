import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback handleScore;
  Result({required this.resultScore, required this.handleScore});
  String get resultText {
    String result;
    if (resultScore <= 8) {
      result = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      result = 'You are pretty likable';
    } else if (resultScore <= 16) {
      result = 'You are so strange';
    } else {
      result = 'You are so bad';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultText,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          TextButton(
            onPressed: handleScore,
            child: Text('Reset'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
