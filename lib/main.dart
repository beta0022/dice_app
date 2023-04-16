import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      // theme: ThemeData(
      //     primaryColor: HexColor('#C7B9FF'),
      //     ),
      home: Scaffold(
        backgroundColor: HexColor('#C7B9FF'),
        // appBar: AppBar(
        //   title: const Text('Dice App'),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dice App',
                style: GoogleFonts.poppins(
                  fontSize: 36,
                ),
              ),
              // Text(
              //   'It\'s time to learn Flutter!',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
