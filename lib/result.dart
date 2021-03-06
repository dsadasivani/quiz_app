import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultMsg {
    String msg;
    if (totalScore < 4) {
      msg = 'You are cool & awesome';
    } else if (totalScore < 7) {
      msg = 'Pretty likable';
    } else if (totalScore < 10) {
      msg = 'You are different';
    } else {
      msg = 'You are BAD-MAN';
    }
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultMsg,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: TextButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.all(20),
            ),
            child: Text('Reset Quiz !!'),
          )
        ],
      ),
    );
  }
}
