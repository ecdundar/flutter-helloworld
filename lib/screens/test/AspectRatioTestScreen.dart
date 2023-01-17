import 'package:flutter/material.dart';

class AspectRatioTestScreen extends StatefulWidget {
  const AspectRatioTestScreen({super.key});

  @override
  State<AspectRatioTestScreen> createState() => AspectRatioTestScreenState();
}

class AspectRatioTestScreenState extends State<AspectRatioTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.topLeft,
      child: AspectRatio(
        aspectRatio: 1 / 10,
        child: Container(color: Colors.red),
      ),
    );
  }
}
