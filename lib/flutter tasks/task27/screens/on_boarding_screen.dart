import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/basketball_home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      curve: Curves.easeInOut,
      pages: [
        onBoardingPage(
            img: 'assets/basketball/onBoarding_img_1.png',
            txt: 'Counting Scores'),
        onBoardingPage(
            img: 'assets/basketball/onBoarding_img_2.png',
            txt: 'For BasketBall Fans'),
        onBoardingPage(
            img: 'assets/basketball/onBoarding_img_3.png',
            txt: 'Let\'s Scooooooooore!'),
      ],
      isProgressTap: true,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(
          color: MyColors.darkerColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      next: Text(
        "Next",
        style: TextStyle(
          color: MyColors.darkerColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      done: Text(
        "Start",
        style: TextStyle(
          color: MyColors.darkerColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BasketballHomeScreen(),
            ));
      },
      dotsDecorator: DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20.0, 10.0),
        activeColor: MyColors.darkColor,
        color: MyColors.lightColor,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
