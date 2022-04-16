import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/screens/product_detail_screen.dart';
import '/screens/product_overview.dart';
import './providers/product_providers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverview(),
        routes: {ProductDetail.routeName: (ctx) => ProductDetail()},
      ),
    );
  }
}
