import 'package:flutter/material.dart';
import 'package:fluttersessions/colors/my_colors.dart';

class EcommerceHomeScreen extends StatelessWidget {
  const EcommerceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.red.shade400,
                              size: 30,
                            ),
                            label: Text(
                              'Find Your Product',
                              style: TextStyle(
                                color: Colors.red.shade400,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.red.shade400,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      icon: Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber.shade50,
                      borderRadius: BorderRadius.circular(16)),
                  child: Image.asset('assets/e-commerce/freed.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.grey),
                      child: Text(
                        'All',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.grey),
                      child: Text(
                        'Category',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.grey),
                      child: Text(
                        'Top',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.grey),
                      child: Text(
                        'Recommended',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                //TODO: ListView

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .25,
                      child: AspectRatio(
                        aspectRatio: 2.8 / 4,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/e-commerce/image1.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.red,
                                padding: EdgeInsets.all(3),
                                minimumSize: Size(30, 30),
                              ),
                              icon: Icon(
                                Icons.favorite,
                                size: 26,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'T-Shirt',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text('(55)'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$300',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
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
