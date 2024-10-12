import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});
  static const pageAddress = 'catalog';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Catalog Page')),
    );
  }
}
