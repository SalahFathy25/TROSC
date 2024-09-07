import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trosc/monster_livescore_app/widgets/my_sized_box.dart';
import 'package:trosc/monster_livescore_app/widgets/welcome_text.dart';

import '../../widgets/my_button.dart';
import 'second_welcome_page.dart';

class FirstWelcomePage extends StatelessWidget {
  const FirstWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              SvgPicture.asset(
                'assets/images/monster_livescore_app/Patterns/pattern_1.svg',
                width: 422,
                height: 472,
              ),
              Positioned(
                top: 175,
                left: 118,
                child: SvgPicture.asset(
                  'assets/images/monster_livescore_app/Logos/alien logo.svg',
                  width: 124,
                  height: 124,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 311,
            child: Column(
              children: [
                myText(
                  'Never miss a goal - get live match alerts, fixtures and results for your favourite teams and competitions',
                  16,
                ),
                mySizedBox(height: 16),
                myButton(
                  text: 'Get Started',
                  context: context,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SecondWelcomePage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
