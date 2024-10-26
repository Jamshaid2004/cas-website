import 'package:cas_website/core/bavel.dart';

class CatalogPageContent extends StatelessWidget {
  const CatalogPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CatalogProductsTitle(),
        CatalogProductsSubtitle(),
      ],
    );
  }
}
