import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer.dart';
import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/servcie_page_services.dart';
import 'package:cas_website/src/presentation/services_page/view/services%20page%20banner%20section/services_page_banner.dart';
import 'package:cas_website/src/presentation/services_page/view/services_app_bar.dart';
import 'package:flutter/material.dart';

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
