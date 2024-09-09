import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trosc/weather_app/widgets/my_item.dart';
import 'package:trosc/weather_app/widgets/my_sized_box.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFFAB40),
              Colors.deepPurple,
              Colors.black87,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mySizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '📍 : EG',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '10th of Ramadan',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              mySizedBox(height: 30),
              Image.asset(
                'assets/images/weather_app/sunny.png',
                width: 230,
                height: 230,
              ),
              mySizedBox(height: 20),
              const Text(
                '28 °C',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'CLEAR',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              mySizedBox(height: 20),
              const Text(
                'Thursday 08 • 8:44 PM',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              mySizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyItem(
                    image: 'assets/images/weather_app/sunrise.png',
                    label: 'Sunrise',
                    value: '5:13 AM',
                  ),
                  MyItem(
                    image: 'assets/images/weather_app/sunset.png',
                    label: 'Sunset',
                    value: '6:39 PM',
                  )
                ],
              ),
              const Divider(height: 30, endIndent: 10, indent: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyItem(
                    image: 'assets/images/weather_app/max_temp.png',
                    label: 'Temp Max',
                    value: '28 °C',
                  ),
                  MyItem(
                    image: 'assets/images/weather_app/min_temp.png',
                    label: 'Temp Min',
                    value: '28 °C',
                  ),
                ],
              ),
              mySizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
