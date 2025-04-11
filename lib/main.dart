import 'package:flutter/material.dart';
import 'flutter tasks/task28_29/screens/ecommerce_home.dart';

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
