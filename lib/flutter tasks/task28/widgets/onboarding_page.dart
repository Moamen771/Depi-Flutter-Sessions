import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel onBoardingPage(
    {required String img,
    required String title,
    required String body,
    Widget? footer}) {
  return PageViewModel(
    image: Image.asset(img),
    title: title,
    body: body,
    footer: footer,
  );
}
