import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task26/screens/home_screen.dart';
import 'package:fluttersessions/flutter%20tasks/task26/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.cyan.shade800,
          gradient: LinearGradient(
            colors: [
              Colors.cyan.shade800,
              Colors.cyan.shade200,
            ],
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 100),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 46,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 30),
                child: Text(
                  "Hello There!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan.shade800,
                              blurRadius: 16,
                              offset: const Offset(0, 5),
                              spreadRadius: -5,
                            )
                          ]),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Email or phone number",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(
                            color: Colors.grey.shade400,
                            height: 10,
                            thickness: 1,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                fillColor: Colors.red),
                          ),
                          Divider(
                            color: Colors.grey.shade400,
                            height: 10,
                            thickness: 1,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                fillColor: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50),
                          backgroundColor: Colors.cyan.shade800,
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Sign UP",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.cyan.shade800),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
