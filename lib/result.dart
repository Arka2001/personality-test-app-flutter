import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

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
      child: Text(resultPhrase,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          )),
    );
  }
}
