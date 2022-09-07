import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onAnswerPressed() {
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
        ),
        body: Column(
          children: [
            const Text("The question!"),
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
