import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: HexColor('#C7B9FF'),
        body: Center(
          child: DiceRoller(key),
        ),
      ),
    );
  }
}
