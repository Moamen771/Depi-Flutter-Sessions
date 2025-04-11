import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/screens/ecommerce_favourite.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/screens/ecommerce_profile.dart';
import 'ecommerce_cart.dart';
import 'ecommerce_home_screen.dart';

class EcommerceHome extends StatefulWidget {
  const EcommerceHome({super.key});

  @override
  State<EcommerceHome> createState() => _EcommerceHomeState();
}

class _EcommerceHomeState extends State<EcommerceHome> {
  List screens = [
    EcommerceHomeScreen(),
    EcommerceCart(),
    EcommerceFavourite(),
    EcommerceProfile(),
  ];
  List<IconData> iconList = [
    Icons.home,
    Icons.shopping_cart_outlined,
    Icons.favorite_outline,
    Icons.account_circle
  ];
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red.shade400,
        child: Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        gapLocation: GapLocation.center,
        activeIndex: screenIndex,
        onTap: (index) => setState(() => screenIndex = index),
        activeColor: Colors.red.shade400,
        inactiveColor: Colors.grey,
        iconSize: 26,
      ),
    );
  }
}
