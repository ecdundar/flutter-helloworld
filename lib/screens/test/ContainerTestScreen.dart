import 'package:flutter/material.dart';

class ContainerTestScreen extends StatefulWidget {
  const ContainerTestScreen({super.key});

  @override
  State<ContainerTestScreen> createState() => _ContainerTestScreenState();
}

class _ContainerTestScreenState extends State<ContainerTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.yellow,
      child: Container(
          color: Colors.lightBlue,
          child: Wrap(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                        child: Text(
                      "Deneme",
                      style:
                          TextStyle(backgroundColor: Colors.red, fontSize: 20),
                    )),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  )),
            ],
          )),
    );
  }
}
