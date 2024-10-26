import 'package:cas_website/src/presentation/catalog_page/view/catalog_page_banner_secton/catalog_page_banner_content.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20banner%20section/home_page_banner_background.dart';
import 'package:flutter/material.dart';

class CatalogPageBanner extends StatelessWidget {
  const CatalogPageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        CatalogBannerContent(),
      ],
    );
  }
}
