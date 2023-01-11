class LoginService {
  static LoginService? _instance;
  factory LoginService() => _instance ??= new LoginService._();
  LoginService._();
}
