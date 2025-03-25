import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';

class PointsButton extends StatelessWidget {
  const PointsButton({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  final String txt;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.darkColor,
            foregroundColor: MyColors.lighterColor,
            padding: EdgeInsets.all(16),
            minimumSize: Size(100, 50)),
        child: Text(
          txt,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
