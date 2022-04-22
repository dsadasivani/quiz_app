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
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer choosen !!');

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
