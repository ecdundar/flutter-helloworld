import 'package:flutter/material.dart';

class AlignTestScreen extends StatefulWidget {
  const AlignTestScreen({super.key});

  @override
  State<AlignTestScreen> createState() => _AlignTestScreenState();
}

class _AlignTestScreenState extends State<AlignTestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.yellow,
      child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )),
    ));
  }
}
