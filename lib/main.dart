import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('qIdx: $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Blue', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Koala', 'Dog', 'Cat'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          'Maximilian Schwarzmüller',
          'Colt Steele',
          'Tim Buchalka',
          'Jonas Schmedtmann'
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer('Answer 1', _answerQuestion),
            Answer('Answer 2', _answerQuestion),
            Answer('Answer 3', _answerQuestion),
          ],
        ),
      ),
    );
  }
}
