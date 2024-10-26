import 'package:cas_website/core/bavel.dart';

class HomePageBannerWidget extends StatelessWidget {
  const HomePageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        HomePageBannerContent(),
      ],
    );
  }
}
