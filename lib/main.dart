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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': [
        {'text': 'White', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'parrot', 'score': 1},
        {'text': 'Hippo', 'score': 2},
        {'text': 'Cheetah', 'score': 3},
        {'text': 'Fox', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite Hero',
      'answers': [
        {'text': 'Yash', 'score': 1},
        {'text': 'AA', 'score': 2},
        {'text': 'NTR', 'score': 3},
        {'text': 'Ram Charan', 'score': 4},
      ],
    },
  ];
  void _answerQuestions(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
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
          title: Text(
            'Behavioural Quiz App',
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
