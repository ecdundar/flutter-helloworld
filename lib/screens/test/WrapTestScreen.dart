import 'package:flutter/material.dart';

class WrapTestScreen extends StatefulWidget {
  const WrapTestScreen({super.key});

  @override
  State<WrapTestScreen> createState() => _WrapTestScreenState();
}

class _WrapTestScreenState extends State<WrapTestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.yellow,
      child: Wrap(children: [
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
        Chip(
          label: Text("Deneme 1"),
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
        ),
      ]),
    ));
  }
}
