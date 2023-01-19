import 'package:flutter/material.dart';

class BasicListViewTestScreen extends StatefulWidget {
  const BasicListViewTestScreen({super.key});

  @override
  State<BasicListViewTestScreen> createState() =>
      _BasicListViewTestScreenState();
}

class _BasicListViewTestScreenState extends State<BasicListViewTestScreen> {
  List<Text> getList() {
    var list = new List<Text>.empty(growable: true);
    list.add(Text("Satır 1"));
    list.add(Text("Satır 2", style: TextStyle(color: Colors.red)));
    list.add(Text("Satır 3"));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var listSource = getList();

    return Scaffold(
      appBar: AppBar(title: Text("ListView Test")),
      body: Container(
        color: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: listSource,
        ),
      ),
    );
  }
}
