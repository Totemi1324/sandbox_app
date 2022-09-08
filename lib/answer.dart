import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback handler;
  final Gradient backgroundGradient;

  const Answer(this.answerText, this.handler,
      {super.key,
      this.backgroundGradient =
          const LinearGradient(colors: [Colors.cyan, Colors.indigo])});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(7);

    return Container(
      width: double.infinity,
      height: 44.0,
      decoration: BoxDecoration(
        gradient: backgroundGradient,
        borderRadius: borderRadius,
      ),
      margin: const EdgeInsets.all(10),
      child: MaterialButton(
        onPressed: handler,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        child: Text(answerText, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
