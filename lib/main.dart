import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:helloworld/screens/login/LoginScreen.dart';
import 'package:helloworld/screens/main/MainScreen.dart';
import 'package:helloworld/screens/test/ContainerTestScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Burulas Egitim',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/ContainerTest",
        builder: EasyLoading.init(),
        routes: {
          "/": (context) => LoginScreen(),
          "/Main": (context) => MainScreen(),
          "/ContainerTest": (context) => ContainerTestScreen()
        });
  }
}
