import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() buttonHandler;
  final String buttonText;

  Answer(this.buttonHandler, this.buttonText);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      // ignore: prefer_const_constructors
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: buttonHandler,
        // ignore: prefer_const_constructors
        child: Text(buttonText),
      ),
    );
  }
}
