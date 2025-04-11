import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/screens/login_screen.dart';
import 'ecommerce_home.dart';

class ECommerceSignup extends StatelessWidget {
  const ECommerceSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              Image.asset('assets/e-commerce/freed.png'),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Enter Name'),
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
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
                decoration: const InputDecoration(
                  label: Text('Phone Number'),
                  prefixIcon: Icon(Icons.phone),
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
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Confirm Password'),
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EcommerceHome(),
                      ));
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
                  "Create Account",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have An Account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ECommerceLogin(),
                          ));
                    },
                    child: Text(
                      'Log In',
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
      ),
    );
  }
}
