import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20approach%20section/home_page_approach_content.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20showcase%20section/home_page_showcase_background.dart';
import 'package:flutter/material.dart';

class HomePageApproachSectionWidget extends StatelessWidget {
  const HomePageApproachSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageShowcaseBackground(),
        HomePageApproachContent(),
      ],
    );
  }
}
