import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      "question_text": "What's your Hogwarts House?",
      "question_answers": [
        {"text": "Gryffindor", "score": 2},
        {"text": "Ravenclaw", "score": 4},
        {"text": "Hufflepuff", "score": 3},
        {"text": "Slytherin", "score": 1}
      ]
    },
    {
      "question_text": "Which animal does your Patronus embody?",
      "question_answers": [
        {"text": "Fox", "score": 2},
        {"text": "Eagle", "score": 3},
        {"text": "Wolf", "score": 5}
      ]
    },
    {
      "question_text": "What wood is your wand made of?",
      "question_answers": [
        {"text": "Chestnut", "score": 6},
        {"text": "Beech", "score": 1},
        {"text": "Cypress", "score": 4},
        {"text": "Maple", "score": 2}
      ]
    },
    {
      "question_text": "Of what material consists the core of your wand?",
      "question_answers": [
        {"text": "Unicorn hair", "score": 2},
        {"text": "Dragon heartstring", "score": 5},
        {"text": "Phoenix feather", "score": 10}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _onAnswerPressed(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionIndex: _questionIndex,
                onAnswerPressed: _onAnswerPressed,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
