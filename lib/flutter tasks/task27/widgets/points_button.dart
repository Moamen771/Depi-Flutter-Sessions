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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.darkColor,
          foregroundColor: MyColors.lighterColor,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(
          txt,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
