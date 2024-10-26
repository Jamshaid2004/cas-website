import 'package:cas_website/core/bavel.dart';

class HomePageApproachSectionWidget extends StatelessWidget {
  const HomePageApproachSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageShowcaseBackground(),
        HomePageApproachContent(),
      ],
    );
  }
}
