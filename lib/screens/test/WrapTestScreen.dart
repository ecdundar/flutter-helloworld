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
      child: Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.vertical,
          spacing: 20,
          runSpacing: 150,
          children: [
            Chip(
              onDeleted: () {
                print("deneme");
              },
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
            Chip(
              label: Text("Deneme 1"),
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
            ),
          ]),
    ));
  }
}
