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
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'https://www.nicepng.com/png/full/186-1866063_dicks-out-for-harambe-sample-avatar.png')),
                subtitle: Text("Satır 1 Açıklama"),
                trailing: Text("..."),
              ),
              ListTile(
                title: Text("Satır 2"),
                leading: Icon(Icons.home, color: Colors.red, size: 20),
                subtitle: Text("Satır 2 Açıklama"),
                trailing: Text("..."),
              ),
              ListTile(
                title: Text("Satır 3"),
                leading: Icon(Icons.home, color: Colors.red, size: 20),
                subtitle: Text("Satır 3 Açıklama"),
                trailing: Text("..."),
              ),
            ],
          ),
        ));
  }
}
