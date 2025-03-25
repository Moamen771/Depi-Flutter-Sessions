import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';
import 'package:fluttersessions/flutter%20tasks/task27/widgets/points_button.dart';

class BasketballHomeScreen extends StatefulWidget {
  const BasketballHomeScreen({super.key});

  @override
  State<BasketballHomeScreen> createState() => _BasketballHomeScreenState();
}

class _BasketballHomeScreenState extends State<BasketballHomeScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lighterColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                spacing: 10,
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  FittedBox(
                    child: Text(
                      teamAScore.toString(),
                      style: TextStyle(
                        fontSize: 80,
                      ),
                    ),
                  ),
                  PointsButton(
                    txt: '+2',
                    onPressed: () {
                      setState(() {
                        teamAScore += 2;
                      });
                    },
                  ),
                  PointsButton(
                    txt: '+3',
                    onPressed: () {
                      setState(() {
                        teamAScore += 3;
                      });
                    },
                  ),
                  PointsButton(
                    txt: '-2',
                    onPressed: () {
                      setState(() {
                        if (teamAScore > 0) {
                          teamAScore -= 2;
                        }
                      });
                    },
                  ),
                  PointsButton(
                    txt: '-3',
                    onPressed: () {
                      setState(() {
                        if (teamAScore > 0) {
                          teamAScore -= 3;
                        }
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 420,
                child: VerticalDivider(
                  width: 1,
                  color: MyColors.darkerColor,
                ),
              ),
              Column(
                spacing: 10,
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  FittedBox(
                    child: Text(
                      teamBScore.toString(),
                      style: TextStyle(
                        fontSize: 80,
                      ),
                    ),
                  ),
                  PointsButton(
                    txt: '+2',
                    onPressed: () {
                      setState(() {
                        teamBScore += 2;
                      });
                    },
                  ),
                  PointsButton(
                    txt: '+3',
                    onPressed: () {
                      setState(() {
                        teamBScore += 3;
                      });
                    },
                  ),
                  PointsButton(
                    txt: '-2',
                    onPressed: () {
                      setState(() {
                        if (teamBScore > 0) {
                          teamBScore -= 2;
                        }
                      });
                    },
                  ),
                  PointsButton(
                    txt: '-3',
                    onPressed: () {
                      setState(() {
                        if (teamBScore > 0) {
                          teamBScore -= 3;
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamAScore = 0;
                teamBScore = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.darkerColor,
              foregroundColor: MyColors.lighterColor,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              minimumSize: Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Reset',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColors.lightColor,
        foregroundColor: MyColors.darkerColor,
        child: Icon(
          Icons.person_pin_rounded,
          size: 32,
        ),
      ),
    );
  }
}
