import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task%2025/Task25.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task25(),
    );
  }
}
