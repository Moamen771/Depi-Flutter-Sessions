import 'package:flutter/material.dart';
import 'package:fluttersessions/sessions/4th_session/counter_screen.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User(id: '1', name: 'Moamen Yasser', phone: '01158142190'),
      User(id: '2', name: 'Nouuuuuuuuuur', phone: '01234567891'),
      User(id: '3', name: 'Rawda Khaled', phone: '01234567892'),
      User(id: '4', name: 'Farghaly', phone: '01234567893'),
      User(id: '5', name: 'Magdy', phone: '01234567894'),
      User(id: '6', name: 'Sharnouby', phone: '01234567895'),
      User(id: '7', name: 'Amged', phone: '01234567896'),
      User(id: '8', name: 'Khaled Kashmeery', phone: '01234567897'),
      User(id: '9', name: 'Moahmed Sombol', phone: '01234567898'),
      User(id: '10', name: 'Khedr karaweta', phone: '01234567899'),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            itemBuilder: (context, index) => UserItem(
                  user: users[index],
                ),
            separatorBuilder: (context, index) => const Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                ),
            itemCount: users.length),
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.grey.shade400, Colors.grey.shade50],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: Text(
              user.id,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  user.phone,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CounterScreen(user: user),
              ),
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey.shade500,
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.phone),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

class User {
  final String id;
  final String name;
  final String phone;

  User({required this.id, required this.name, required this.phone});
}
