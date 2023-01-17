import 'package:flutter/material.dart';

class BaselineTestScreen extends StatefulWidget {
  const BaselineTestScreen({super.key});

  @override
  State<BaselineTestScreen> createState() => _BaselineTestScreenState();
}

class _BaselineTestScreenState extends State<BaselineTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            )));
  }
}
