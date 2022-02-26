// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, unused_local_variable, override_on_non_overriding_member

import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 12},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite character?',
      'answers': [
        {'text': 'Eren', 'score': 1},
        {'text': 'Eren', 'score': 1},
        {'text': 'Eren', 'score': 1},
        {'text': 'Eren', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(context) {
    void _answerQuestion(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
