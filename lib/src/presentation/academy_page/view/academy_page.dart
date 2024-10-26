import 'package:cas_website/core/bavel.dart';

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
