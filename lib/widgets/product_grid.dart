import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_providers.dart';
import '/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider(
        create: (ctx) => products[index],
        child: Productitem(
            // id: products[index].id,
            // imageUrl: products[index].imageUrl,
            // title: products[index].title,
            ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
