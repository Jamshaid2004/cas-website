import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_products_section/catalog_page_products_list.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_products_section/catalog_page_products_title.dart';
import 'package:flutter/material.dart';

class CatalogPageContent extends StatelessWidget {
  const CatalogPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CatalogProductsTitle(),
        CatalogProductsSubtitle(),
        CatalogProducts(),
      ],
    );
  }
}
