

import 'package:cas_website/core/bavel.dart';

class AboutPageBannnerContent extends StatelessWidget {
  const AboutPageBannnerContent({super.key});

  static const imageWidth = 0.3;
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AboutBannerHeading(),
            AboutBannerDescription(),
          ],
        ),
        Image.asset(
          'assets/images/banner_image_catalog_page.png',
          width: width * imageWidth,
        )
      ],
    );
  }
}

class AboutBannerHeading extends StatelessWidget {
  const AboutBannerHeading({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.03,
      color: ApplicationColors.lightBlueThemeColor,
      fontWeight: FontWeight.bold,
    );

    return Center(child: Text('Mission Statement', style: textStyle));
  }
}

class AboutBannerDescription extends StatelessWidget {
  const AboutBannerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
        fontSize: width * 0.012,
        letterSpacing: 1,
        height: width * 0.0012,
        color: ApplicationColors.appBlackTextColor,
        fontWeight: FontWeight.w500);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(style: textStyle, children: const [
        TextSpan(text: "Welcome to our catalog, where quality meets\n"),
        TextSpan(text: "variety. Explore a carefully curated selection\n"),
        TextSpan(text: "of exceptional products designed to inspire\n"),
        TextSpan(text: "and enhance your lifestyle.\n"),
      ]),
    );
  }
}
