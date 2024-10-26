import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_app_bar.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_banner_secton/catalog_page_banner.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_products_section/catalog_page_products.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});
  static const pageAddress = 'catalog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CatalogPageAppBar(
        context: context,
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CatalogPageBanner(),
            CatalogPageContent(),
            HomePageFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
