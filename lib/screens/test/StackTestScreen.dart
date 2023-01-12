import 'package:flutter/material.dart';

class StackTestScreen extends StatefulWidget {
  const StackTestScreen({super.key});

  @override
  State<StackTestScreen> createState() => _StackTestScreenState();
}

class _StackTestScreenState extends State<StackTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Stack(
          alignment: AlignmentDirectional.center,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              height: 160,
              color: Colors.green,
            ),
          ]),
    );
  }
}
