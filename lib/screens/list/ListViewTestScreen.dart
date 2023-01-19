import 'package:flutter/material.dart';

class ListViewTestScreen extends StatefulWidget {
  const ListViewTestScreen({super.key});

  @override
  State<ListViewTestScreen> createState() => _ListViewTestScreenState();
}

class _ListViewTestScreenState extends State<ListViewTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Test")),
      body: Container(
        color: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Text('Satır 1'),
            Text('Satır 2'),
            Text('Satır 3'),
          ],
        ),
      ),
    );
  }
}
