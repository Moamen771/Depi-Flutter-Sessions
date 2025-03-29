import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:fluttersessions/flutter%20tasks/task27/models/player.dart';

class PlayerInfoScreen extends StatelessWidget {
  const PlayerInfoScreen({super.key, required this.pLayer});

  final PLayer pLayer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lighterColor,
      appBar: AppBar(
        backgroundColor: MyColors.lighterColor,
        surfaceTintColor: MyColors.lighterColor,
        foregroundColor: MyColors.darkerColor,
        title: Text(
          pLayer.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        spacing: 20,
        children: [
          Expanded(
            child: FittedBox(
              child: CircleAvatar(
                backgroundImage: NetworkImage(pLayer.image),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                left: 16.0,
                bottom: 16.0,
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    pLayer.teamName,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    decoration: BoxDecoration(
                        color: MyColors.lightColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      spacing: 20,
                      children: [
                        Icon(
                          Icons.numbers,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          pLayer.tShirtNumber,
                          style: TextStyle(
                            color: MyColors.darkerColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    decoration: BoxDecoration(
                        color: MyColors.lightColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      spacing: 20,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          pLayer.phone,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
