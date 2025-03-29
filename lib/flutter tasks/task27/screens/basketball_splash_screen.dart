import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/on_boarding_screen.dart';

class BasketballSplashScreen extends StatefulWidget {
  const BasketballSplashScreen({super.key});

  @override
  State<BasketballSplashScreen> createState() => _BasketballSplashScreenState();
}

class _BasketballSplashScreenState extends State<BasketballSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.lighterColor,
      child: Center(
        child: Image.asset(
          'assets/basketball/basketball_logo.png',
          height: 250,
        ),
      ),
    );
  }
}
