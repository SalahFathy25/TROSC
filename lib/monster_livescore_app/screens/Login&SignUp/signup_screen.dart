import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trosc/monster_livescore_app/widgets/auth_fields.dart';
import 'package:trosc/monster_livescore_app/widgets/name_auth_field.dart';

import '../../widgets/logos.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_sized_box.dart';
import '../../widgets/signin_click.dart';

class Signup extends StatefulWidget {
  Signup({super.key});
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                'SIGN UP',
                style: GoogleFonts.oswald(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              mySizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808797),
                      letterSpacing: -0.5,
                    ),
                  ),
                  signIn(context),
                ],
              ),
              mySizedBox(height: 32),
              AuthFields(formKey: widget.formKey),
              mySizedBox(height: 24),
              NameAuthField(formKey1: widget.formKey1),
              mySizedBox(height: 24),
              myButton(
                text: 'Sign Up',
                context: context,
                onPressed: () {
                  if (widget.formKey.currentState!.validate() &&
                      widget.formKey1.currentState!.validate()) {}
                },
              ),
              mySizedBox(height: 24),
              logos('Sign up'),
            ],
          ),
        ),
      ),
    );
  }
}
