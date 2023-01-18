import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertTestScreen extends StatefulWidget {
  const AlertTestScreen({super.key});

  @override
  State<AlertTestScreen> createState() => _AlertTestScreenState();
}

class _AlertTestScreenState extends State<AlertTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Alerts"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Deneme Toast Mesajı",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Text("Toast Deneme")),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Snackbar Test")));
                    },
                    child: Text("Snackbar Test"))
              ],
            )));
  }
}
