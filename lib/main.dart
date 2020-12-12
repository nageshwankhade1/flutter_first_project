import 'package:flutter/material.dart';
import 'package:flutter_first_project/answer.dart';
import 'package:flutter_first_project/question.dart';
import 'package:flutter_first_project/quiz.dart';
import 'package:flutter_first_project/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 09},
        {'text': 'white', 'score': 08},
        {'text': 'Blue', 'score': 07}
      ]
    },
    {
      'questionText': 'What is favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 09},
        {'text': 'Cat', 'score': 08},
        {'text': 'Camel', 'score': 01}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    print('Score :: $score');
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;

      print('Totol Score ::$_totalScore');
    });

    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetHandler),
      ),
    );
  } //build method
} //end class
