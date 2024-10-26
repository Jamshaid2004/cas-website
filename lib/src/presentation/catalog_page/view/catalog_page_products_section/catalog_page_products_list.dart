import 'package:cas_website/core/catalog_products.dart';
import 'package:cas_website/src/presentation/catalog_page/models/catalog_product_model.dart';
import 'package:flutter/material.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});
  //......CONSTANTS
  static const crossAxisCount = 2;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: catalogProductsList.length,
      itemBuilder: (context, index) {
        return null;
      },
    );
  }
}

class CatalogProductItemView extends StatelessWidget {
  const CatalogProductItemView({super.key, required this.product});
  final CatalogProduct product;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
