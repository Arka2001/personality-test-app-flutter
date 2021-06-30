import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Question(questions[questionIndex]['question']),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20.0,
        ),
        // ignore: deprecated_member_use
        // ignore: prefer_const_constructors
        ...(questions[questionIndex]['answers'] as List<Map>).map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['option']);
        }).toList(),
      ],
    );
  }
}
