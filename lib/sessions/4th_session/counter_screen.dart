import 'package:flutter/material.dart';
import 'package:fluttersessions/sessions/4th_session/user_screen.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key, required this.user});

  final User user;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.user.name}\'s Counter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 120),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    counter > 0 ? counter-- : counter;
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade500,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.remove,
                  size: 60,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade500,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.add,
                  size: 60,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade500,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            icon: const Icon(
              Icons.replay,
              size: 60,
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
