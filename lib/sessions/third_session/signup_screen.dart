import 'package:flutter/material.dart';
import 'package:fluttersessions/sessions/third_session/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showPassword = true;
  bool showConfirmPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Image.network(
                    'https://cdn-icons-png.flaticon.com/128/12500/12500060.png'),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'enter your email',
                    label: Text(
                      'E-mail',
                      style: TextStyle(color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 3),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    hintText: 'enter your password',
                    label: Text(
                      'Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword == true
                              ? showPassword = false
                              : showPassword = true;
                        });
                      },
                      icon: showPassword == true
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 3),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: showConfirmPassword,
                  decoration: InputDecoration(
                    hintText: 'confirm your password',
                    label: Text(
                      'Confirm Password',
                      style: TextStyle(color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showConfirmPassword == true
                              ? showConfirmPassword = false
                              : showConfirmPassword = true;
                        });
                      },
                      icon: showConfirmPassword == true
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have account?'),
                    TextButton(
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            )),
                        child: Text(
                          'SignUp',
                          style: TextStyle(color: Colors.blue[700]),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
