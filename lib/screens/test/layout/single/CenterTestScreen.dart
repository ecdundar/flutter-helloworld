import 'package:flutter/material.dart';

class CenterTestScreen extends StatefulWidget {
  const CenterTestScreen({super.key});

  @override
  State<CenterTestScreen> createState() => _CenterTestScreenState();
}

class _CenterTestScreenState extends State<CenterTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      )),
    );
  }
}
