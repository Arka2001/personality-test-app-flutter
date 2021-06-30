import 'package:flutter/material.dart';
import 'package:personality_test_app/result.dart';
import './quiz.dart';

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
  final List<Map> _questions = const [
    {
      'question': 'What is your favourite color?',
      'answers': [
        {'option': 'Black', 'score': 0},
        {'option': 'Blue', 'score': 3},
        {'option': 'Red', 'score': 6},
        {'option': 'White', 'score': 10},
      ]
    },
    {
      'question': 'What is your favourite animal?',
      'answers': [
        {'option': 'Tiger', 'score': 8},
        {'option': 'Elephant', 'score': 9},
        {'option': 'Snake', 'score': 3},
        {'option': 'Rabbit', 'score': 10},
      ]
    },
    {
      'question': 'Who is your favourite role model?',
      'answers': [
        {'option': 'Salman Khan', 'score': 2},
        {'option': 'Swami Vivekananda', 'score': 10},
        {'option': 'Osama Bin Laden', 'score': 0},
        {'option': 'APJ Abdul Kalam', 'score': 9},
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('What Type of Dragon Are You?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
