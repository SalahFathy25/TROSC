import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mySecondButton(BuildContext context, Widget newPage) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => newPage,
        ),
      );
    },
    child: Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color(0xffF8FE11),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          'Sign Up for Monster Livescore',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
