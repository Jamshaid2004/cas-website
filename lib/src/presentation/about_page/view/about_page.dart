import 'package:cas_website/core/bavel.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static const pageAddress = 'about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AboutPageAppBar(
        context: context,
      ),
      body: const Center(child: AboutPageBannerWidget()),
    );
  }
}
