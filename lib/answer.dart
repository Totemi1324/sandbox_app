import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final Gradient backgroundGradient;

  const Answer(this.handler,
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
        child: const Text("Answer 1", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
