import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetFunction;

  const Result(this.resultScore, this.resetFunction, {super.key});

  String get resultPhrase {
    String resultPhraseContent;

    if (resultScore >= 20) {
      resultPhraseContent =
          "You are an amaze-balls person! We should be friends :)";
    } else if (resultScore >= 10) {
      resultPhraseContent = "You are ok I guess. Pretty likeable :)";
    } else {
      resultPhraseContent =
          "You are truly despicable, no way around it. No offense though :)";
    }

    return resultPhraseContent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              onPressed: resetFunction,
              child: const Text(
                'Restart',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
