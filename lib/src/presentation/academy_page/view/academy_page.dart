import 'package:cas_website/src/presentation/academy_page/view/academy%20page%20banner%20section/academy_page_banner.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy%20page%20courses%20section/academy_page_courses.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page_app_bar.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer.dart';
import 'package:flutter/material.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});
  static const pageAddress = 'academy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcademyPageAppBar(
        context: context,
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AcademyPageBannerWidget(),
            AcademyPageCoursesWidget(),
            HomePageFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
