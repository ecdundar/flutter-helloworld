import 'dart:async';
import 'dart:convert';
import 'package:helloworld/models/login/UserLoginRequestModel.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static LoginService? _instance;
  factory LoginService() => _instance ??= new LoginService._();
  LoginService._();

  Future girisYap(UserLoginRequestModel model) async {
    Completer c = new Completer();
    try {
      String url = "https://petekapi.burulas.com.tr/users/authenticate";
      http.post(Uri.parse(url), body: jsonEncode(model), headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }).then((response) {
        if (response.statusCode == 200) {
        } else {
          return c
              .completeError('Lütfen internet bağlantınızı kontrol ediniz.');
        }
      });
    } catch (e) {
      return c.completeError('Lütfen internet bağlantınızı kontrol ediniz.');
    }
    return c.future;
  }
}
