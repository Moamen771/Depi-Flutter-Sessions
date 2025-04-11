import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28/screens/signup_screen.dart';

class ECommerceLogin extends StatelessWidget {
  const ECommerceLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/e-commerce/freed.png'),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Enter Email'),
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('Enter Password'),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.red.shade400, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomeScreen(),
                //     ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ECommerceSignup(),
                        ));
                  },
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red.shade400,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
