import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:helloworld/screens/login/LoginScreen.dart';
import 'package:helloworld/screens/main/MainScreen.dart';
import 'package:helloworld/screens/test/AlignTestScreen.dart';
import 'package:helloworld/screens/test/AspectRatioTestScreen.dart';
import 'package:helloworld/screens/test/BaselineTestScreen.dart';
import 'package:helloworld/screens/test/ContainerTestScreen.dart';
import 'package:helloworld/screens/test/FittedBoxTestScreen.dart';
import 'package:helloworld/screens/test/FractionalySizedBoxTestScreen.dart';
import 'package:helloworld/screens/test/OffstageScreenTest.dart';
import 'package:helloworld/screens/test/StackTestScreen.dart';
import 'package:helloworld/screens/test/WrapTestScreen.dart';

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
        initialRoute: "/Offstage",
        builder: EasyLoading.init(),
        routes: {
          "/": (context) => LoginScreen(),
          "/Main": (context) => MainScreen(),
          "/ContainerTest": (context) => ContainerTestScreen(),
          "/WrapTest": (context) => WrapTestScreen(),
          "/StackTest": (context) => StackTestScreen(),
          "/AlignTest": (context) => AlignTestScreen(),
          "/AspectRatio": (context) => AspectRatioTestScreen(),
          "/BaselineScreen": (context) => BaselineTestScreen(),
          "/FittedBoxTestScreen": (context) => FittedBoxTestScreen(),
          "/FractionalySizedBox": (context) => FractionalySizedBoxTestScreen(),
          "/Offstage": ((context) => OffstageScreenTest())
        });
  }
}
