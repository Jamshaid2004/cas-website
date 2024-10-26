import 'package:cas_website/core/bavel.dart';

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
