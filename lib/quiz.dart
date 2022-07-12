import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int s) answerQuestion;

  const Quiz(this.questions, this.questionIndex, this.answerQuestion, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText'].toString()),
          SizedBox(height: 30,),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());}).toList(),
        ],
      ),
    );
  }
}
