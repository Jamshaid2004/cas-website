import 'package:cas_website/core/bavel.dart';

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
