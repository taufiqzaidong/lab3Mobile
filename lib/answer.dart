import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.deepPurpleAccent,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
