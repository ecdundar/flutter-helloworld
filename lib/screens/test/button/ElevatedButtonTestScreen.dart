import 'package:flutter/material.dart';

class ElevatedButtonTestScreen extends StatefulWidget {
  const ElevatedButtonTestScreen({super.key});

  @override
  State<ElevatedButtonTestScreen> createState() =>
      _ElevatedButtonTestScreenState();
}

class _ElevatedButtonTestScreenState extends State<ElevatedButtonTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Elevated Test')),
      body: Container(
          color: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("Basic Elevated Button Pressed");
                  },
                  child: Text("Basic Elevated Button"))
            ],
          )),
    );
  }
}
