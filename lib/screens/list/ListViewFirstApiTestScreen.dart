import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:helloworld/helpers/AlertHelper.dart';
import 'package:helloworld/models/list/UserToDoModel.dart';
import 'package:helloworld/services/ListApiService.dart';

class ListViewFirstApiTestScreen extends StatefulWidget {
  const ListViewFirstApiTestScreen({super.key});

  @override
  State<ListViewFirstApiTestScreen> createState() =>
      _ListViewFirstApiTestScreenState();
}

class _ListViewFirstApiTestScreenState
    extends State<ListViewFirstApiTestScreen> {
  @override
  void initState() {
    super.initState(); //base class ın initstate ini çalıştırır.
    refreshList();
  }

  List<UserTodoModel> MainListe = List<UserTodoModel>.empty();
  void refreshList() {
    EasyLoading.show(status: 'Listeleniyor');
    ListApiService().getTodoListIsleminiBaslat().then((liste) {
      //Future işlem başarılı ise then çalışır.
      MainListe = liste;
      EasyLoading.dismiss();
      setState(() {});
    }).catchError((onError) {
      //Future hatalıysa catchError çalışır.
      EasyLoading.dismiss();
      EasyLoading.showError(onError.toString());
      //AlertHelper.MesajGoster(context, title, Mesaj)
    });
  }

  BuildContext? mainContext = null;
  @override
  Widget build(BuildContext context) {
    mainContext = context;
    return Scaffold(
      appBar: AppBar(title: Text("ListView API Test")),
      body: Container(
          child: ListView.builder(
              itemCount: MainListe.length,
              itemBuilder: (context, index) {
                return MainListe[index].toView();
              })),
    );
  }
}
