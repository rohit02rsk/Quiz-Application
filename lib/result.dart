import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resText = 'Happy Marriage anniversary!';
    if (resultScore <= 8) {
      resText = 'Happy Marriage anniversary!';
    } else if (resultScore <= 12) {
      resText = 'Happy Marriage anniversary!';
    } else if (resultScore <= 16) {
      resText = 'Happy Marriage anniversary!';
    } else {
      resText = 'Happy Marriage anniversary!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz?'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
