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
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Snackbar Test")));
                    },
                    child: Text("Snackbar Test")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showBasicAlert(context);
                    },
                    child: Text("Show Basic Alert")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showYesNoDialog(context);
                    },
                    child: Text("Show Yes No Alert")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showChoiceDialog(context);
                    },
                    child: Text("Show Choice Dialog"))
              ],
            )));
  }

  void showBasicAlert(BuildContext context) {
    var dialog = new AlertDialog(
      title: Text("Alert Title"),
      content: Text("Alert mesaj içeriği lorem ipsum"),
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

  void showYesNoDialog(BuildContext context) {
    var dialog = new AlertDialog(
      title: Text("Alert Title"),
      content: Text("Alert mesaj içeriği lorem ipsum"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //yesIslemYap();
            },
            child: Text("YES")),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //noIslemYap();
            },
            child: Text("NO"))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  List<String> listeDon() {
    var listItems = new List<String>.empty(
        growable: true); //growable true yaparsak yeni nesne eklenebilir.
    listItems.add("Seçenek 1");
    listItems.add("Seçenek 2");
    listItems.add("Seçenek 3");
    return listItems;
  }

  var selectedItem = "Seçenek 2";
  void showChoiceDialog(BuildContext context) {
    var liste = listeDon();
    var dialog = new AlertDialog(
      title: Text("Alert Title"),
      content: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: liste
              .map((e) => RadioListTile(
                  title: Text(e),
                  value: e,
                  selected: selectedItem == e,
                  groupValue: selectedItem,
                  onChanged: (value) {
                    Navigator.of(context).pop();
                  }))
              .toList(),
        ),
      ),
      actions: [],
    );

    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}
