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
                                      fontSize: 24,
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
                                      color: Colors.tealAccent.shade400,
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
