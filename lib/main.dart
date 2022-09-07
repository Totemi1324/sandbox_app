import 'package:flutter/material.dart';
import './question.dart';

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
      "What's your Hogwarts House?",
      "Which animal does your Patronus embody?",
      "What wood is your wand made of?",
      "Of what material consists the core of your wand?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questionList[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _onAnswerPressed,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _onAnswerPressed,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _onAnswerPressed,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
