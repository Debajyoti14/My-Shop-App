import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/cart_item.dart';
import 'package:provider/provider.dart';
import '../providers/product_providers.dart';
import '../widgets/badge.dart';
import '../widgets/product_grid.dart';

class ProductOverview extends StatefulWidget {
  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showOnlyFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int selectedValue) {
              setState(() {
                if (selectedValue == 0) {
                  _showOnlyFavourites = true;
                } else {
                  _showOnlyFavourites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Only Favourites'), value: 0),
              PopupMenuItem(child: Text('Show All'), value: 1),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ProductGrid(_showOnlyFavourites),
    );
  }
}
