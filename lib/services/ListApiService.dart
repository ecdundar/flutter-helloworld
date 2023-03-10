import 'dart:async';
import 'dart:convert';
import 'package:helloworld/models/list/UserToDoModel.dart';
import 'package:http/http.dart' as http;

class ListApiService {
  static ListApiService? _instance;
  factory ListApiService() => _instance ??= new ListApiService._();
  ListApiService._();

  Future getTodoListIsleminiBaslat() async {
    Completer c = new Completer();
    String myurl = "https://jsonplaceholder.typicode.com/todos";
    http.get(Uri.parse(myurl), headers: {'Accept': 'application/json'}).then(
        (response) {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        var returnList = List<UserTodoModel>.from(
            list.map((e) => UserTodoModel.fromJson(e)));
        Future.delayed(Duration(seconds: 2)).then((value) {
          return c.complete(returnList);
        });
      } else {
        return c.completeError("Api üzerinden liste alınamadı.");
      }
    }).catchError((error) {
      c.completeError("Api üzerinden liste alınamadı.");
    });
    return c.future;
  }
}
