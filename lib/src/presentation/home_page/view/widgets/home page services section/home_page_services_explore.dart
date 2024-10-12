import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/src/presentation/services_page/view/services_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageServicesExploreMoreButton extends StatelessWidget {
  const HomePageServicesExploreMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.01),
      child: AppButton(
          onTap: () => context.go('/${ServicesPage.pageAddress}'),
          buttonText: 'Explore More',
          textSize: 13),
    );
  }
}
