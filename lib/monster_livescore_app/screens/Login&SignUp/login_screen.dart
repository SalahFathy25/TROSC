import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trosc/monster_livescore_app/widgets/auth_fields.dart';

import '../../widgets/logos.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_sized_box.dart';

class MonsterLogin extends StatelessWidget {
  MonsterLogin({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff141414),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: ListView(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xff1F2022),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'third',
                          (route) => false,
                        );
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              mySizedBox(height: 32),
              Text(
                'LET\'S SIGN YOU IN',
                style: GoogleFonts.oswald(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              mySizedBox(height: 4),
              Text(
                'Welcome back. You\'ve been missed!',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808797),
                  letterSpacing: -0.5,
                ),
              ),
              mySizedBox(height: 32),
              AuthFields(formKey: formKey),
              mySizedBox(height: 24),
              myButton(
                text: 'Login',
                context: context,
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
              mySizedBox(height: 24),
              logos('Login'),
            ],
          ),
        ),
      ),
    );
  }
}
