import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25, fontFamily: 'Timesnewroman'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
