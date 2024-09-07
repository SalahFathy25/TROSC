import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_second_button.dart';
import '../../widgets/my_sized_box.dart';
import '../../widgets/welcome_text.dart';
import '../Login&SignUp/login_screen.dart';
import '../Login&SignUp/signup_screen.dart';

class ThirdWelcomePage extends StatelessWidget {
  const ThirdWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/images/monster_livescore_app/Patterns/pattern_2.svg',
                width: 422,
                height: 472,
              ),
              Positioned(
                top: 40,
                left: 0,
                child: Image.asset(
                  'assets/images/monster_livescore_app/third_image.png',
                  width: 375,
                  height: 416,
                  // fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 311,
            child: Column(
              children: [
                myText(
                  'We\'d like to check that your preferences and details are accurate.',
                  8,
                ),
                mySizedBox(height: 24),
                myButton(
                  text: 'Login',
                  context: context,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return MonsterLogin();
                      },
                    ));
                  },
                ),
                mySizedBox(height: 16),
                mySecondButton(context, Signup()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
