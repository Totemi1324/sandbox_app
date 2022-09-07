import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void onAnswerPressed() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
            Text(
              questionList[questionIndex],
            ),
            ElevatedButton(
              onPressed: onAnswerPressed,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: onAnswerPressed,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: onAnswerPressed,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
