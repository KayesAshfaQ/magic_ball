import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow.shade200,
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade400,
          title: const Text('Ask me anything.'),
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        padding: const EdgeInsets.all(16.0),
        onPressed: () {
          setState(() {
            answer = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
