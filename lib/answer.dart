import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String name;
  Answer(this.handler, this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handler,
        child: Text(name),
      ),
    );
  }
}
