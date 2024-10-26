import 'package:cas_website/core/bavel.dart';

class HomePageContactSectionWidget extends StatelessWidget {
  const HomePageContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HomePageContactBackground(),
        HomePageContactContent(),
      ],
    );
  }
}
