import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
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
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestions, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('You\'re done !!'),
              ),
      ),
    );
  }
}
