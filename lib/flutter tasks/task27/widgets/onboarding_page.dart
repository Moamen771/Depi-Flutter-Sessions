import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel onBoardingPage({required String img, required String txt}) {
  return PageViewModel(
    title: '',
    bodyWidget: Column(
      children: [
        Image.asset(
          img,
          height: 400,
        ),
        Text(
          txt,
          style: const TextStyle(
            color: MyColors.darkColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
