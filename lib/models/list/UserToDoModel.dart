//https://javiercbk.github.io/json_to_dart/ adresi üzerinden oluşturuldu.
import 'package:flutter/material.dart';

class UserTodoModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  UserTodoModel({this.userId, this.id, this.title, this.completed});

  UserTodoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
    //TarihHelper.GetDate(json[""], "yyyy-MM-dd")
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }

  Container toView() {
    return Container(
      child: Card(
          child: ListTile(
        title: Text(title ?? ""),
        leading: Icon(Icons.note),
        trailing: Text(id.toString()),
      )),
    );
  }
}
