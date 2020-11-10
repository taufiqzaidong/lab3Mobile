import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore > 75) {
      resultText = 'You are awesome!!!';
    } else if (resultScore > 50) {
      resultText = 'Pretty cool!!';
    } else if (resultScore > 25) {
      resultText = 'You good??';
    } else {
      resultText = 'RIP';
    }
    return (resultText);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(
              child: Text('Retake Quiz'),
              textColor: Colors.blue,
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
