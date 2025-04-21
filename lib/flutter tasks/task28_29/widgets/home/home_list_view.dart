import 'package:flutter/material.dart';
import 'package:fluttersessions/flutter%20tasks/task28_29/models/product.dart';
import 'list_view _item.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .33,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) => ListViewItem(
          product: products[index],
        ),
      ),
    );
  }
}
