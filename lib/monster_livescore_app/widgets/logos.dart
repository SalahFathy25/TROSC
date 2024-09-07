import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logo_button.dart';
import 'my_sized_box.dart';

Widget logos(String text) {
  return Column(
    children: [
      Center(
        child: Text(
          'Or $text with',
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xff808797),
          ),
        ),
      ),
      mySizedBox(height: 24),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          logo(image: 'assets/images/monster_livescore_app/Logos/Google.svg'),
          mySizedBox(width: 8),
          logo(image: 'assets/images/monster_livescore_app/Logos/Twitter.svg'),
          mySizedBox(width: 8),
          logo(image: 'assets/images/monster_livescore_app/Logos/Facebook.svg'),
        ],
      )
    ],
  );
}
