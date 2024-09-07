import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trosc/weather_app/weather.dart';

import 'Day 9/cubit/counter_cubit.dart';
import 'Day 9/cubit/password_cubit.dart';
import 'Day 9/password_field.dart';
import 'monster_livescore_app/screens/Welcome_Pages/third_welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => CounterCubit(),
      create: (context) => PasswordVisibilityCubit(),
      child: MaterialApp(
        routes: {
          'third': (context) => const ThirdWelcomePage(),
        },
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Weather(),
          ),
        ),
      ),
    );
  }
}
