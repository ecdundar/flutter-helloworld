import 'package:flutter/cupertino.dart';
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
                    child: Text("Show Choice Dialog")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showBottomSheetDialog(context);
                    },
                    child: Text("Show Bottom Sheet Dialog")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showIosStyleDialog(context);
                    },
                    child: Text("Show IOS Style Dialog")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      showInputDialog(context);
                    },
                    child: Text("Show Input Dialog"))
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

  void showChoiceDialog(BuildContext context) {
    var selectedItem = "Seçenek 2";
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
                    //Navigator.of(context).pop();
                    selectedItem = e;
                    setState(() {});
                  }))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //yesIslemYap();
            },
            child: Text("UYGULA"))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void showBottomSheetDialog(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => CupertinoActionSheet(
              message: Text('Message'),
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Action 1",
                      style: TextStyle(color: Colors.green),
                    )),
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Action 2")),
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Action 3"))
              ],
              cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Vazgeç",
                    style: TextStyle(color: Colors.red),
                  )),
            ));
  }

  void showIosStyleDialog(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => CupertinoAlertDialog(
              title: Text("Başlık"),
              content: Text("İçerik"),
              actions: [
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes"),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ));
  }

  var kullaniciSifre = "";
  void showInputDialog(BuildContext context) {
    var dialog = new AlertDialog(
      title: Text("Alert Title"),
      content: Container(
          height: 75,
          child: Column(
            children: [
              TextField(
                controller: TextEditingController(text: kullaniciSifre),
                onChanged: (value) => kullaniciSifre = value.trim(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Şifre"),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          )),
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
