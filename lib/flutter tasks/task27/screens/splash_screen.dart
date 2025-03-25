import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/basketball_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => BasketballHomeScreen(),
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
          'assets/basketball/basketball-orange-logo.png',
          height: 250,
        ),
      ),
    );
  }
}
