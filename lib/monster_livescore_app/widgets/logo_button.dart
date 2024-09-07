import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget logo({required String image}) {
  return Container(
    width: 98,
    height: 48,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(48),
      border: Border.all(
        color:const Color(0xff1F2022),
        width: 2,
      ),
    ),
    child: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        image,
        width: 24,
      ),
    ),
  );
}
