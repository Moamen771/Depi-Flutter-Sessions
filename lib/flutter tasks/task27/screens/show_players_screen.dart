import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task27/models/player.dart';
import 'package:fluttersessions/flutter%20tasks/task27/widgets/player_card.dart';
import '../../../colors/my_colors.dart';

class ShowPlayersScreen extends StatelessWidget {
  const ShowPlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lighterColor,
      appBar: AppBar(
        backgroundColor: MyColors.lighterColor,
        surfaceTintColor: MyColors.lighterColor,
        foregroundColor: MyColors.darkerColor,
        title: Text(
          'Players of the teams',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) => PlayerCard(
            player: players[index],
          ),
        ),
      ),
    );
  }
}
