import 'package:flutter/material.dart';

class FittedBoxTestScreen extends StatefulWidget {
  const FittedBoxTestScreen({super.key});

  @override
  State<FittedBoxTestScreen> createState() => _FittedBoxTestScreenState();
}

class _FittedBoxTestScreenState extends State<FittedBoxTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: FittedBox(fit: BoxFit., child: Image.network(
            'https://www.burulas.com.tr/wp-content/uploads/revslider/BURULA-ANASAYFA/anasayfa-slider_0001.jpg')),
    );
  }
}
