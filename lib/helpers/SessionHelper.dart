import 'package:helloworld/models/login/UserLoginResponseModel.dart';

class SessionHelper {
  static final SessionHelper _instance = SessionHelper._internal();
  SessionHelper._internal();
  factory SessionHelper() {
    return _instance;
  }

  UserLoginResponseModel? userModel = null;
}
