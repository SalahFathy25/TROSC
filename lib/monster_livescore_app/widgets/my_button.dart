import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myButton({
  required String text,
  required BuildContext context,
  required void Function()? onPressed,
}) {
  return SizedBox(
    width: 350,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffF8FE11),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: const Color(0xff141414),
          letterSpacing: -0.5,
        ),
      ),
    ),
  );
}
