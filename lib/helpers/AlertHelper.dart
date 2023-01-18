import 'package:flutter/material.dart';

class AlertHelper {
  static void MesajGoster(BuildContext context, String title, String Mesaj,
      [String? AltBaslik]) {
    var dialog = new AlertDialog(
      title: Text(title),
      content: Text(Mesaj),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}
