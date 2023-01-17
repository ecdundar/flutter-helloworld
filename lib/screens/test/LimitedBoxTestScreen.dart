import 'package:flutter/material.dart';

class LimitedBoxTestScreen extends StatefulWidget {
  const LimitedBoxTestScreen({super.key});

  @override
  State<LimitedBoxTestScreen> createState() => _LimitedBoxTestScreenState();
}

class _LimitedBoxTestScreenState extends State<LimitedBoxTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: UnconstrainedBox(
            child: LimitedBox(
          maxWidth: 200,
          maxHeight: 200,
          child: Container(width: 250, height: 250, color: Colors.red),
        )));
  }
}
