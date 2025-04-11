import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/screens/ecommerce_onboarding.dart';

class ECommerceSplash extends StatefulWidget {
  const ECommerceSplash({super.key});

  @override
  State<ECommerceSplash> createState() => _ECommerceSplashState();
}

class _ECommerceSplashState extends State<ECommerceSplash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ECommerceOnBoardingScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black87,
          image: DecorationImage(
            image: AssetImage('assets/e-commerce/image2.jpg'),
            opacity: .5,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.shopping_cart,
              color: Colors.red[400],
              size: 200,
            ),
            Text(
              'AST Shop',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 46,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
