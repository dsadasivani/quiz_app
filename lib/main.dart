import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer choosen !!');

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color',
      'What\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestions),
          RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer choosen2 !!')),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer choosen3 !!');
              }),
        ]),
      ),
    );
  }
}
