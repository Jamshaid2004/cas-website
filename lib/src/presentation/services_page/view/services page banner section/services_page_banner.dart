import 'package:cas_website/core/bavel.dart';

class ServicesPageBannerWidget extends StatelessWidget {
  const ServicesPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        ServicesPageBannerContent(),
      ],
    );
  }
}
