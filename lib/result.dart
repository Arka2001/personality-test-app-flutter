import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() resetQuiz;

  Result({required this.score, required this.resetQuiz});

  String get resultPhrase {
    if (score >= 3 && score < 6) {
      return "You are a dark shaded character";
    } else if (score >= 6 && score < 8) {
      return "You walk in the dark grey regions in life";
    } else if (score >= 9 && score < 21) {
      return "You take your instincts seriously and a man of conscience";
    } else {
      return "You are a person of high integrity and nobility. You are one of the few who stand for justice and equality";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.blue,
            child: TextButton(
              onPressed: resetQuiz,
              child: Text(
                'Reset Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
