import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20services%20section/home_page_services_explore.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20services%20section/home_page_services_row.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20services%20section/home_page_services_text.dart';
import 'package:flutter/material.dart';

class HomePageServicesSectionWidget extends StatelessWidget {
  const HomePageServicesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePageServicesTitleText(),
        HomePageServicesSubTitleText(),
        HomePageServicesRow(),
        HomePageServicesExploreMoreButton(),
      ],
    );
  }
}
