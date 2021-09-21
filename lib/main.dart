import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 7.5}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 9},
        {'text': 'Koala', 'score': 8},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Maximilian Schwarzmüller', 'score': 7.9},
        {'text': 'Colt Steele', 'score': 9},
        {'text': 'Tim Buchalka', 'score': 8.7}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    print('qIdx: $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(),
      ),
    );
  }
}
