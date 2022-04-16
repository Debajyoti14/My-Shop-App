import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/product_item.dart';

import '../models/product.dart';
import '../widgets/product_grid.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductGrid(),
    );
  }
}
