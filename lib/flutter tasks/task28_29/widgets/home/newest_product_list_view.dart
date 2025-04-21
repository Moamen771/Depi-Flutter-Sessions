import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'list_view _item.dart';

class NewestProductListView extends StatelessWidget {
  const NewestProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3.2,
      ),
      itemBuilder: (context, index) => ListViewItem(
        product: products[index],
      ),
    );
  }
}
