import 'package:flutter/material.dart';

class ListViewFirstApiTestScreen extends StatefulWidget {
  const ListViewFirstApiTestScreen({super.key});

  @override
  State<ListViewFirstApiTestScreen> createState() =>
      _ListViewFirstApiTestScreenState();
}

class _ListViewFirstApiTestScreenState
    extends State<ListViewFirstApiTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView API Test")),
    );
  }
}
