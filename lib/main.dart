import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:trosc/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:trosc/weather_app/bloc/weather_bloc.dart';
import 'package:trosc/weather_app/data/determine_position.dart';

import 'monster_livescore_app/screens/Welcome_Pages/third_welcome_page.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'third': (context) => const ThirdWelcomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: determinePosition(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return BlocProvider<WeatherBloc>(
              create: (context) => WeatherBloc()
                ..add(
                  FetchWeather(snapshot.data as Position),
                ),
              child: const SplashScreen(),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
