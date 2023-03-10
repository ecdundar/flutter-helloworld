import 'package:flutter/material.dart';

class FractionalySizedBoxTestScreen extends StatefulWidget {
  const FractionalySizedBoxTestScreen({super.key});

  @override
  State<FractionalySizedBoxTestScreen> createState() =>
      _FractionalySizedBoxTestScreenState();
}

class _FractionalySizedBoxTestScreenState
    extends State<FractionalySizedBoxTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: FractionallySizedBox(
            widthFactor: 0.3,
            heightFactor: 0.3,
            alignment: Alignment.center,
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            )));
  }
}
