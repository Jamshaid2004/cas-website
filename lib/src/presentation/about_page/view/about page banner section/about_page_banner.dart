import 'package:cas_website/core/bavel.dart';

class AboutPageBannerWidget extends StatelessWidget {
  const AboutPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        AboutPageBannnerContent(),
      ],
    );
  }
}
