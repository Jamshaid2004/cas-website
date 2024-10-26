import 'package:cas_website/core/bavel.dart';

class HomePageShowcaseSectionWidget extends StatelessWidget {
  const HomePageShowcaseSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageShowcaseBackground(),
        HomePageShowcaseContent(),
      ],
    );
  }
}
