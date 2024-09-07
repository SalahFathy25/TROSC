import 'package:flutter/material.dart';

import '../screens/Login&SignUp/login_screen.dart';

Widget signIn(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MonsterLogin()),
      );
    },
    child: const Text(
      ' Sign in',
      style: TextStyle(
        color: Color(0xffF8FE11),
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.5,
      ),
    ),
  );
}
