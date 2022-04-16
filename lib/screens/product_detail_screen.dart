import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  // final String title;

  // const ProductDetail(this.title);
  static const routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
