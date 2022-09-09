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
      "question_answers": ["Gryffindor", "Ravenclaw", "Hufflepuff", "Slytherin"]
    },
    {
      "question_text": "Which animal does your Patronus embody?",
      "question_answers": ["Fox", "Eagle", "Wolf"]
    },
    {
      "question_text": "What wood is your wand made of?",
      "question_answers": ["Chestnut", "Beech", "Cypress", "Maple"]
    },
    {
      "question_text": "Of what material consists the core of your wand?",
      "question_answers": [
        "Unicorn hair",
        "Dragon heart string",
        "Phoenix feather"
      ]
    },
  ];
  var _questionIndex = 0;

  void _onAnswerPressed() {
    setState(() {
      _questionIndex++;
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
            : const Result(),
      ),
    );
  }
}
