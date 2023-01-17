import 'package:flutter/material.dart';

class OffstageScreenTest extends StatefulWidget {
  const OffstageScreenTest({super.key});

  @override
  State<OffstageScreenTest> createState() => _OffstageScreenTestState();
}

class _OffstageScreenTestState extends State<OffstageScreenTest> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Offstage(
      offstage: _isVisible,
      child: SizedBox(
          height: 250, width: 250, child: Container(color: Colors.yellow)),
    ));
  }
}
