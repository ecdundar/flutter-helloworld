import 'package:dynamic_icons/dynamic_icons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextField getUsername() {
    return (TextField(
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
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Şifre"),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                      print("button tıklandı");
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));*/
                      Navigator.pushReplacementNamed(context, "/Main");
                    },
                    icon: DynamicIcons.getIconFromName("login"),
                    label: Text("Giriş Yap"),
                  ),
                  Expanded(flex: 1, child: Container())
                ],
              ))),
    );
  }
}
