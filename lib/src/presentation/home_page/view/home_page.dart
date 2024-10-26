import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20approach%20section/home_page_approach.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20banner%20section/home_page_banner.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20contact%20section/home_page_contact.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20services%20section/home_page_services.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20showcase%20section/home_page_showcase_section.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home_page_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const pageAddress = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(
        context: context,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HomePageBannerWidget(),
            HomePageServicesSectionWidget(),
            HomePageShowcaseSectionWidget(),
            HomePageApproachSectionWidget(),
            HomePageContactSectionWidget(),
            HomePageFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
