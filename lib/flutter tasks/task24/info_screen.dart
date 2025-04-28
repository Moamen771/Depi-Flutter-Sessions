import 'package:flutter/material.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 240, 240, 1),
      //rgb(246, 240, 240)
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Icon(Icons.account_circle),
        ),
        title: const Text(
          'My CV',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.favorite,
          ),
          const SizedBox(
            width: 24,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 226, 177, 1),
                  //rgb(242, 226, 177)
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                spacing: 20,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Moamen Yasser Kamel',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 226, 177, 1),
                  //rgb(213, 199, 163)
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                spacing: 20,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    'Moamen@gmail.com',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 226, 177, 1),
                  //rgb(189, 179, 149)
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                spacing: 20,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 24,
                  ),
                  Text(
                    '01158142190',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
