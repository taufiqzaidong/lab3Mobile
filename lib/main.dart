import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(TestApp());

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestAppState();
  }
}

class TestAppState extends State<TestApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite pet?',
      'answers': [
        {'text': 'Dog', 'score': 25},
        {'text': 'Cat', 'score': 25},
        {'text': 'Hamster', 'score': 25},
        {'text': 'Rat', 'score': 0}
      ]
    },
    {
      'questionText': 'Choose a colour?',
      'answers': [
        {'text': 'Black', 'score': 25},
        {'text': 'Fish', 'score': 0},
        {'text': 'Blue', 'score': 25},
        {'text': 'Chicken', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your favourite activity?',
      'answers': [
        {'text': 'Smoking', 'score': 0},
        {'text': 'Sleeping', 'score': 0},
        {'text': 'Praying', 'score': 25},
        {'text': 'Drinking', 'score': 0},
      ]
    },
    {
      'questionText': 'Which sport have you played before?',
      'answers': [
        {'text': 'Football', 'score': 25},
        {'text': 'Badminton', 'score': 25},
        {'text': 'Volleyball', 'score': 25},
        {'text': 'None of the above', 'score': 0},
      ]
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

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('Have more questions');
    } else {
      print('No more questions!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Taufiq\'s First App')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)));
  }
}
