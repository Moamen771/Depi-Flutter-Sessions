import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/models/product.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.height * .18,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
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
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          product.name,
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
            Text('(${product.totalRates})'),
            SizedBox(
              width: 10,
            ),
            Text(
              '\$${product.price}',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
            ),
          ],
        )
      ],
    );
  }
}
