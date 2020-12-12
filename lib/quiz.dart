import 'package:flutter/material.dart';
import 'package:flutter_first_project/answer.dart';
import 'package:flutter_first_project/question.dart';

class Quiz extends StatelessWidget {

   List<Map<String, Object>> questions;
   int questionIndex;
   Function answerQuestion;

  Quiz({@required this.questions, @required this.answerQuestion, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
