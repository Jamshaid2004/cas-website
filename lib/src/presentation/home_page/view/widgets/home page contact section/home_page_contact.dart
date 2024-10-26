import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20contact%20section/home_page_contact_background.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20contact%20section/home_page_contact_content.dart';
import 'package:flutter/material.dart';

class HomePageContactSectionWidget extends StatelessWidget {
  const HomePageContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HomePageContactBackground(),
        HomePageContactContent(),
      ],
    );
  }
}
