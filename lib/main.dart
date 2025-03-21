import 'package:flutter/material.dart';
import 'package:fluttersessions/sessions/4th_session/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme:
            TextSelectionThemeData(selectionHandleColor: Colors.cyan.shade800),
      ),
      home: UserScreen(),
    );
  }
}
