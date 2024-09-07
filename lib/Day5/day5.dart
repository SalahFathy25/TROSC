import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  final Color mainColor = const Color(0xffEA4143);
  final Color backgroundColor = const Color.fromARGB(255, 210, 209, 209);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 5,
          shadowColor: mainColor,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                color: mainColor,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
            color: mainColor,
          ),
          title: Center(
            child: Text(
              'TROSC',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          )),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: double.infinity,
            height: 720,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: mainColor,
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/TROSC.jpg',
                  width: 170,
                  height: 170,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'TROSC In HEART',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/Heart.png',
                      width: 400,
                      height: 250,
                    ),
                    Positioned(
                      top: 110,
                      left: 227,
                      child: Text(
                        'TROSC',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 2.0,
                        ),
                      ),
                      fillColor: Colors.black,
                      prefixIcon: const Icon(Icons.person, color: Colors.red),
                      hintText: 'Ex: Salah Fathy',
                      label: Text(
                        'your name',
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hintStyle: TextStyle(color: mainColor),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ex: Ahmed Wael , Heba Elnaghy',
                      label: Text(
                        'Instructor name',
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: mainColor,
                          width: 2.0,
                        ),
                      ),
                      fillColor: Colors.black,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      hintStyle: TextStyle(color: mainColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
