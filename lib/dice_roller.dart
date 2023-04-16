import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceRoller extends StatefulWidget {
  final Key? key;

  DiceRoller(this.key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 6;

  void rollTheDice() {
    setState(() {
      currDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Roll the Dice',
          style: GoogleFonts.poppins(
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Image.asset(
            'assets/img/$currDiceRoll.png',
            width: 200,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            backgroundColor: Colors.black87,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          onPressed: rollTheDice,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              'Click Here',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
