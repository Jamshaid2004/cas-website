import 'package:cas_website/core/bavel.dart';

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
            HomePageFooterTrackRecordText(),
            HomePageFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
