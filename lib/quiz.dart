import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function onAnswerPressed;

  const Quiz(
      {required this.questionList,
      required this.questionIndex,
      required this.onAnswerPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[questionIndex]["question_text"] as String,
        ),
        ...(questionList[questionIndex]["question_answers"]
                as List<Map<String, Object>>)
            .map((e) => Answer(
                e['text'] as String, () => onAnswerPressed(e['score'] as int)))
            .toList()
      ],
    );
  }
}
