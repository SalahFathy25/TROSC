import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_sized_box.dart';
import '../../widgets/welcome_text.dart';
import 'third_welcome_page.dart';

class SecondWelcomePage extends StatelessWidget {
  const SecondWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: Column(
        children: [
          Image.asset(
            'assets/images/monster_livescore_app/second_image.png',
            width: 600,
            height: 540,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 311,
            child: Column(
              children: [
                myText(
                  'We\'d like to check that your preferences and details are accurate.',
                  16,
                ),
                mySizedBox(height: 16),
                myButton(
                  text: 'Next',
                  context: context,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ThirdWelcomePage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
