import 'package:flutter/material.dart';

class TextButtonTestScreen extends StatefulWidget {
  const TextButtonTestScreen({super.key});

  @override
  State<TextButtonTestScreen> createState() => _TextButtonTestScreenState();
}

class _TextButtonTestScreenState extends State<TextButtonTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Test')),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                      onPressed: () {
                        print("Butona basıldı");
                      },
                      onLongPress: () {
                        print("Butona uzun basıldı");
                      },
                      child: Text("Basic Text Button")),
                  SizedBox(height: 20),
                  TextButton.icon(
                      onPressed: () {
                        print('Butona tıklandı');
                      },
                      icon:
                          Icon(Icons.account_box, color: Colors.red, size: 50),
                      label: Text('Icon Text Button')),
                  SizedBox(height: 20),
                  TextButton(
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
                  TextButton(
                      onPressed: () {
                        print('Shadow button tıklandı');
                      },
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.green),
                          elevation: MaterialStateProperty.all(8)),
                      child: Text('Shadow Text Button')),
                  SizedBox(height: 20),
                  TextButton(
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
