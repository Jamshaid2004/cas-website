import 'package:cas_website/core/bavel.dart';

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
