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
                      icon: Icon(Icons.account_box,
                          color: Colors.yellow, size: 50),
                      label: Text('Icon Elevated Button')),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('tıklandı');
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.resolveWith((states) {
                            //Butona tıklandığında yeşil renk yapması için eklendi
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blueGrey;
                            }
                            return Colors.purple;
                          })),
                      child: Text('Styled Button')),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('Shadow button tıklandı');
                      },
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.green),
                          elevation: MaterialStateProperty.all(8)),
                      child: Text('Shadow Elevated Button')),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('Shadow button tıklandı');
                      },
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.red, width: 2)),
                          shadowColor: MaterialStateProperty.all(Colors.green),
                          elevation: MaterialStateProperty.all(8)),
                      child: Text('Bordered Button'))
                ],
              ))),
    );
  }
}
