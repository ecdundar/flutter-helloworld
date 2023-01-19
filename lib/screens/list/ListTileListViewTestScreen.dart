import 'package:flutter/material.dart';

class ListTileListViewTestScreen extends StatefulWidget {
  const ListTileListViewTestScreen({super.key});

  @override
  State<ListTileListViewTestScreen> createState() =>
      _ListTileListViewTestScreenState();
}

class _ListTileListViewTestScreenState
    extends State<ListTileListViewTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List Tile Test")),
        body: Container(
          color: Colors.yellow,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              ListTile(
                title: Text("Satır 1"),
                leading: Icon(Icons.home, color: Colors.red, size: 20),
                trailing: Text("..."),
              ),
              ListTile(
                title: Text("Satır 2"),
                leading: Icon(Icons.home, color: Colors.red, size: 20),
                trailing: Text("..."),
              ),
              ListTile(
                title: Text("Satır 3"),
                leading: Icon(Icons.home, color: Colors.red, size: 20),
                trailing: Text("..."),
              ),
            ],
          ),
        ));
  }
}
