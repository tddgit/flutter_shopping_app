import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // final double price;

  static const String routeName = '/product-detail';

  const ProductDetailScreen();

  @override
  Widget build(BuildContext context) {
    final String? productId =
        ModalRoute.of(context)!.settings.arguments as String?;
    final Products loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
    );
  }
}
