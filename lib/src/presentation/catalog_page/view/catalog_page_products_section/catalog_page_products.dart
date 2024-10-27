import 'package:cas_website/core/bavel.dart';

class CatalogPageContent extends StatelessWidget {
  const CatalogPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CatalogProductsTitle(),
        const CatalogProductsSubtitle(),
        const CatalogProducts(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        )
      ],
    );
  }
}
