import 'package:cas_website/core/bavel.dart';

class AcademyPageBannerWidget extends StatelessWidget {
  const AcademyPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        AcademyPageBannerContent(),
      ],
    );
  }
}
