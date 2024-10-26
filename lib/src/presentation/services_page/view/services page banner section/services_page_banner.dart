import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20banner%20section/home_page_banner_background.dart';
import 'package:cas_website/src/presentation/services_page/view/services%20page%20banner%20section/services_page_banner_content.dart';
import 'package:flutter/material.dart';

class ServicesPageBannerWidget extends StatelessWidget {
  const ServicesPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        ServicesPageBannerContent(),
      ],
    );
  }
}
