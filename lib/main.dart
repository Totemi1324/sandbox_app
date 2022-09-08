import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _onAnswerPressed() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionList = [
      {
        "question_text": "What's your Hogwarts House?",
        "question_answers": [
          "Gryffindor",
          "Ravenclaw",
          "Hufflepuff",
          "Slytherin"
        ]
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questionList[_questionIndex]["question_text"] as String,
            ),
            ...(questionList[_questionIndex]["question_answers"] as List<String>).map((e) => Answer(e, _onAnswerPressed)).toList()
          ],
        ),
      ),
    );
  }
}
