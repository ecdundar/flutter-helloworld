import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
    isListVisible = false;
    setState(() {});
    ListApiService().getTodoListIsleminiBaslat().then((liste) {
      //Future işlem başarılı ise then çalışır.
      MainListe = liste;
      isListVisible = true;
      EasyLoading.dismiss();
      setState(() {});
    }).catchError((onError) {
      //Future hatalıysa catchError çalışır.
      EasyLoading.dismiss();
      EasyLoading.showError(onError.toString());
      isListVisible = true;
      setState(() {});
      //AlertHelper.MesajGoster(context, title, Mesaj)
    });
  }

  Future<void> refreshData() async {
    refreshList();
    setState(() {});
  }

  BuildContext? mainContext = null;
  bool isListVisible = false;
  @override
  Widget build(BuildContext context) {
    mainContext = context;
    return Scaffold(
      appBar: AppBar(title: Text("ListView API Test")),
      body: Visibility(
          visible: isListVisible,
          child: Container(
              child: Column(children: [
            Expanded(
                child: Container(
                    child: RefreshIndicator(
                        onRefresh: refreshData,
                        child: ListView.separated(
                            separatorBuilder: (c, index) => Divider(
                                  height: 2,
                                  color: Colors.grey,
                                ),
                            itemCount: MainListe.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(MainListe[index]
                                                .id
                                                .toString())));
                                  },
                                  child: Slidable(
                                      key: Key(index.toString()),
                                      direction: Axis.horizontal,
                                      startActionPane: ActionPane(
                                          motion: ScrollMotion(),
                                          dismissible: DismissiblePane(
                                              onDismissed: () {}),
                                          children: [
                                            SlidableAction(
                                                onPressed:
                                                    (BuildContext context) {
                                                  print('on view');
                                                },
                                                backgroundColor: Colors.blue,
                                                foregroundColor: Colors.white,
                                                icon: Icons.search,
                                                label: 'View')
                                          ]),
                                      endActionPane: ActionPane(
                                          dismissible: DismissiblePane(
                                              onDismissed: () {}),
                                          motion: ScrollMotion(),
                                          children: [
                                            SlidableAction(
                                                onPressed:
                                                    (BuildContext context) {
                                                  print('on delete');
                                                  MainListe.removeAt(index);
                                                  setState(() {});
                                                },
                                                backgroundColor: Colors.red,
                                                foregroundColor: Colors.white,
                                                icon: Icons.delete,
                                                label: 'Delete')
                                          ]),
                                      child: MainListe[index].toView()));
                            })))),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.yellow,
              child: Text(
                MainListe.length.toString(),
                textAlign: TextAlign.center,
              ),
            )
          ]))),
    );
  }
}
