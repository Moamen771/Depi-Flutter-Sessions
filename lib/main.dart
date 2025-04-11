import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28/screens/ecommerce_home.dart';
import 'package:fluttersessions/flutter%20tasks/task28/screens/ecommerce_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EcommerceHome(),
    );
  }
}
