import 'package:dynamic_icons/dynamic_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:helloworld/models/login/UserLoginRequestModel.dart';
import 'package:helloworld/services/LoginService.dart';
import 'package:shared_preferences/shared_preferences.dart';
//DENEME MESAJI

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool chkBeniHatirla = false;
  String? kullaniciAdi = "flutter@burulas.com.tr";
  String? kullaniciSifre = "Wh08943?";

  @override
  void initState() {
    super.initState();
    getLoginInfo();
  }

  TextField getUsername() {
    return (TextField(
        controller: TextEditingController(text: kullaniciAdi),
        onChanged: (value) => kullaniciAdi = value.trim(),
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: "Kullanıcı Adı")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 1, child: Container()),
                  getUsername(),
                  SizedBox(height: 20),
                  TextField(
                    controller: TextEditingController(text: kullaniciSifre),
                    onChanged: (value) => kullaniciSifre = value.trim(),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Şifre"),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  Row(children: [
                    FlutterSwitch(
                      value: chkBeniHatirla,
                      onToggle: (value) {
                        setState(() {
                          chkBeniHatirla = value;
                        });
                      },
                    ),
                    Expanded(flex: 1, child: Container()),
                    ElevatedButton.icon(
                      onPressed: () {
                        girisYap();
                      },
                      icon: DynamicIcons.getIconFromName("login"),
                      label: Text("Giriş Yap"),
                    )
                  ]),
                  Expanded(flex: 1, child: Container())
                ],
              ))),
    );
  }

  void girisYap() {
    //Klavyeyi Kapat.
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    //1) Verileri Kontrol ET
    if (kullaniciAdi?.isEmpty == true) {
      EasyLoading.showToast("Lütfen kullanıcı adı giriniz....");
      return;
    }
    if (kullaniciSifre?.isEmpty == true) {
      EasyLoading.showToast("Lütfen kullanıcı şifrenizi giriniz...",
          toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }

    //2) Api yi kontrol et
    EasyLoading.show(status: "İşleminiz Yapılıyor...");
    var model = new UserLoginRequestModel(
        userName: kullaniciAdi, password: kullaniciSifre);
    LoginService().girisYap(model).catchError((onError) {
      EasyLoading.dismiss();
      EasyLoading.showError(onError.toString());
    }).then((value) {
      EasyLoading.dismiss();
      if (value == false) {
        EasyLoading.showInfo(
            "Lütfen kullanıcı adı ve/veya şifrenizi kontrol ediniz.");
      } else {
        //4) Başarılıysa ikinci ekrana git
        saveLoginInfo(model).then((value) {
          Navigator.pushReplacementNamed(context, "/Main");
        });
      }
    });

    //3) Başarılıysa verileri kaydet
  }

  Future<bool> saveLoginInfo(UserLoginRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (chkBeniHatirla) {
      await prefs.setString("KullaniciAdi", model.userName ?? "");
      await prefs.setString("KullaniciSifre", model.password ?? "");
      await prefs.setBool("BeniHatirla", chkBeniHatirla);
    } else {
      await prefs.setBool("BeniHatirla", false);
    }
    return true;
  }

  void getLoginInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    chkBeniHatirla = prefs.getBool("BeniHatirla") ?? false;
    if (chkBeniHatirla) {
      kullaniciAdi = prefs.getString("KullaniciAdi") ?? "";
      kullaniciSifre = prefs.getString("KullaniciSifre") ?? "";
      setState(() {});
      //girisYap();
    }
  }
}
