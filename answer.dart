import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.grey[600],
          textColor: Colors.white,
          child: Text(
            widget.answerText,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: widget.selectHandler,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.blue))),
    );
  }
}
