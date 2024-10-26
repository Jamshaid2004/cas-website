import 'package:cas_website/core/bavel.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});
  static const pageAddress = 'services';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ServicesPageAppBar(
        context: context,
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ServicesPageBannerWidget(),
            ServciePageServicesWidget(),
            HomePageFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
