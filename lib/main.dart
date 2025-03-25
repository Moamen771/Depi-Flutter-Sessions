import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/basketball_home_screen.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
