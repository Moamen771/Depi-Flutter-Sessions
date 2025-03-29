import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task27/models/player.dart';
import 'package:fluttersessions/flutter%20tasks/task27/screens/player_info_screen.dart';
import '../../../colors/my_colors.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    super.key,
    required this.player,
  });

  final PLayer player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayerInfoScreen(pLayer: player),
            )),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: MyColors.lightColor,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image.network(
                    player.image,
                    fit: BoxFit.fill,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      FittedBox(
                        child: Text(
                          player.name,
                          style: TextStyle(
                              color: MyColors.darkerColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          player.teamName == 'Los Angeles Lakers'
                              ? 'Team A'
                              : 'Team B',
                          style: TextStyle(
                              color: MyColors.darkerColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
