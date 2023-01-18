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
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("Butona basıldı");
                      },
                      onLongPress: () {
                        print("Butona uzun basıldı");
                      },
                      child: Text("Basic Elevated Button")),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      onPressed: () {
                        print('Butona tıklandı');
                      },
                      icon: Icon(Icons.account_box),
                      label: Text('Icon Elevated Button'))
                ],
              ))),
    );
  }
}
