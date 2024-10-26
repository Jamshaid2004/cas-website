import 'package:cas_website/core/bavel.dart';

class CareersPageBannerWidget extends StatelessWidget {
  const CareersPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        CareersPageBannerContent(),
      ],
    );
  }
}
