import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final selectHandler;
  final answer;
  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
