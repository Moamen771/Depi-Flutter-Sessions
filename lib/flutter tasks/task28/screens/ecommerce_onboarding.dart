import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28/screens/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/onboarding_page.dart';

class ECommerceOnBoardingScreen extends StatelessWidget {
  const ECommerceOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      curve: Curves.easeInOut,
      pages: [
        onBoardingPage(
            img: 'assets/e-commerce/splash11.png',
            title: 'Shop Now',
            body:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        onBoardingPage(
            img: 'assets/e-commerce/splash22.png',
            title: 'Big Discount',
            body: ''),
        onBoardingPage(
            img: 'assets/e-commerce/splash33.png',
            title: 'Free Delivery',
            body:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ECommerceLogin(),
                    )),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red[400],
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )),
      ],
      isProgressTap: true,
      showBackButton: true,
      showDoneButton: false,
      back: Text(
        'Back',
        style: TextStyle(
          color: Colors.red[400],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      next: Text(
        "Next",
        style: TextStyle(
          color: Colors.red[400],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      dotsDecorator: DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20.0, 10.0),
        activeColor: Colors.red[400],
        color: Colors.grey,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
