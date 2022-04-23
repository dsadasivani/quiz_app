import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;
  Answer(this.handler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        //***NOTES: In order to style button, use below property***
        //Option 1:
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.blue),
        //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
        //Option 2:
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.blue,
        //   onPrimary: Colors.white,
        // ),
        child: Text(answerText),
        onPressed: handler,
      ),
    );
  }
}
