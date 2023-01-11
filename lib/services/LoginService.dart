import 'dart:async';
import 'dart:convert';
import 'package:helloworld/models/login/UserLoginRequestModel.dart';
import 'package:helloworld/models/login/UserLoginResponseModel.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static LoginService? _instance;
  factory LoginService() => _instance ??= new LoginService._();
  LoginService._();

  Future girisYap(UserLoginRequestModel model) async {
    Completer c = new Completer();
    try {
      String url = "https://petekapi.burulas.com.tr/users/authenticate";
      var reqModel = jsonEncode(model);
      http.post(Uri.parse(url),
          body: reqModel,
          headers: {'Content-Type': 'application/json'}).then((response) {
        if (response.statusCode == 200) {
          var responseModel =
              UserLoginResponseModel.fromJson(jsonDecode(response.body));
          if ((responseModel.token?.isEmpty ?? true) == true) {
            return c.complete(true);
          } else {
            return c.complete(false);
          }
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
