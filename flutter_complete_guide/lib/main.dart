import "package:flutter/material.dart";
import "./question.dart";
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // ignore: avoid_print
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['blue', 'green', 'yellow', 'orange'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['pig', 'chicken', 'buffalo', 'rabbit'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['max', 'max', 'max'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List).map((answer) {
              return Answer(answerQuestion, answer);
            })
          ],
        ),
      ),
    );
  }
}
