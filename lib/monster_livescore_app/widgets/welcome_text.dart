import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_sized_box.dart';

Widget myText(String text, double height) {
  return Column(
    children: [
      Text(
        'MONSTER LIVESCORE',
        style: GoogleFonts.oswald(
          fontWeight: FontWeight.w700,
          fontSize: 35,
          color: Colors.white,
        ),
      ),
      mySizedBox(height: height),
      SizedBox(
        width: 350,
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color:const Color(0xff808797),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
