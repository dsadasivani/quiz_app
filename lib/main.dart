import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Answer choosen !!');

    print(questionIndex);
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
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestions),
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