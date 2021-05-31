import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/products_grid.dart';

enum FilterOptions {
  // ignore: constant_identifier_names
  favorites,
  // ignore: constant_identifier_names
  all,
}

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton<FilterOptions>(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.favorites) {}
            },
            itemBuilder: (_) => <PopupMenuItem<FilterOptions>>[
              const PopupMenuItem<FilterOptions>(
                  value: FilterOptions.favorites,
                  child: Text('Only Favorites')),
              const PopupMenuItem<FilterOptions>(
                  value: FilterOptions.all, child: Text('Show All')),
            ],
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
