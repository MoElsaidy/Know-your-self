import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), color: Colors.white),
      width: double.infinity,
      margin: EdgeInsets.all(9),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26, color: Colors.black),
        textAlign: TextAlign.right,
      ),
    );
  }
}
