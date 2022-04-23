import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': ['Black', 'Blue', 'Yellow', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': ['Horse', 'Hippo', 'Tiger', 'Cheetah'],
    },
    {
      'questionText': 'What\'s your favourite Hero',
      'answers': ['Yash', 'AA', 'NTR', 'Ram Charan'],
    },
  ];
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('more questions');
    } else {
      print('done bro');
    }
    print('Answer choosen !!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestions)
            : Result(),
      ),
    );
  }
}
