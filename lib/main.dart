import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:helloworld/screens/login/LoginScreen.dart';
import 'package:helloworld/screens/main/MainScreen.dart';
import 'package:helloworld/screens/test/alert/AlertTestScreen.dart';
import 'package:helloworld/screens/test/button/ElevatedButtonTestScreen.dart';
import 'package:helloworld/screens/test/button/OutlinedButtonTestScreen.dart';
import 'package:helloworld/screens/test/button/TextButtonTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/AlignTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/AspectRatioTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/BaselineTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/ContainerTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/FittedBoxTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/FractionalySizedBoxTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/OffstageScreenTest.dart';
import 'package:helloworld/screens/test/layout/single/StackTestScreen.dart';
import 'package:helloworld/screens/test/layout/single/TransformScreen.dart';
import 'package:helloworld/screens/test/layout/single/WrapTestScreen.dart';

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
        initialRoute: "/TextButton",
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
          "/Offstage": ((context) => OffstageScreenTest()),
          "/Transform": (context) => TransformScreenTest(),
          "/Alert": (context) => AlertTestScreen(),
          "/Elevated": (context) => ElevatedButtonTestScreen(),
          "/Outlined": ((context) => OutlinedButtonTestScreen()),
          "/TextButton": ((context) => TextButtonTestScreen())
        });
  }
}
