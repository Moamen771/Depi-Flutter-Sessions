import 'package:flutter/material.dart';

class Task25 extends StatelessWidget {
  const Task25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/024/354/252/non_2x/businessman-isolated-illustration-ai-generative-free-photo.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Barry Lyon',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Chief Technology Officer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 5; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://media.gettyimages.com/id/1317804584/photo/one-businesswoman-studio-portrait-looking-at-the-camera.jpg?s=612x612&w=gi&k=20&c=4Yij4DHYT-m3sFIsC6oTvDr5cZnkaOAGPGBQPZ-hFGM=',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Hortense Tinker',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Network Engineer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 2; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                  for (int index = 1; index <= 3; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade100,
                                      size: 30,
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://img.freepik.com/free-photo/smiley-businesswoman-posing-outdoors-with-arms-crossed-copy-space_23-2148767055.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Arlene Sharman',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Certified Personal Trainer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 4; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.tealAccent.shade100,
                                    size: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://img.freepik.com/free-photo/closeup-young-female-professional-making-eye-contact-against-colored-background_662251-651.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Angelica Geary',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Designer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 4; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.tealAccent.shade100,
                                    size: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Carl Hambledon',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Java Developer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 3; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                  for (int index = 1; index <= 2; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade100,
                                      size: 30,
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/024/558/262/non_2x/businessman-isolated-illustration-ai-generative-free-png.png',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Lowell Cristophers',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Frontend Developer',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  Text(
                                    '(202) 555-0193',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int index = 1; index <= 4; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade700,
                                      size: 30,
                                    ),
                                  for (int index = 1; index <= 1; index++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.tealAccent.shade100,
                                      size: 30,
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
