import 'package:flutter/material.dart';

class TransformScreenTest extends StatefulWidget {
  const TransformScreenTest({super.key});

  @override
  State<TransformScreenTest> createState() => _TransformScreenTestState();
}

class _TransformScreenTestState extends State<TransformScreenTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Transform.rotate(
          angle: 15,
          alignment: Alignment.center,
          child: Container(width: 50, height: 50, color: Colors.red),
        ));
  }
}
