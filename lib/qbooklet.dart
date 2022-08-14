import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Qbooklet extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Qbooklet(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['question'] as String,
      ),
      ...(questions[questionIndex]['ans'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['Rating']), answer['text'] as String);
      }).toList(),
    ]);
  }
}
