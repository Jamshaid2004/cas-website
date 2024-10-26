import 'package:cas_website/core/bavel.dart';

class CareersPageBannerContent extends StatelessWidget {
  const CareersPageBannerContent({super.key});

  @override
  Widget build(BuildContext context) {
    var Size(:width) = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CareersPageBannerLeadingText(),
            CareersPageBannerFollowingText(),
          ],
        ),
        Image.asset(
          'assets/images/banner_image_careers_page.png',
          width: width * 0.3,
        )
      ],
    );
  }
}

class CareersPageBannerLeadingText extends StatelessWidget {
  const CareersPageBannerLeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.03,
      color: ApplicationColors.lightBlueThemeColor,
      fontWeight: FontWeight.bold,
    );

    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Work in CAS', style: textStyle),
          Text('Grow with Us!', style: textStyle),
        ],
      ),
    );
  }
}

class CareersPageBannerFollowingText extends StatelessWidget {
  const CareersPageBannerFollowingText({super.key});

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
        TextSpan(
            text: "At CAS, we believe that knowledge is the foundation of\n"),
        TextSpan(
            text: "personal and professional growth. Our diverse range of\n"),
        TextSpan(
            text: "courses is designed to empower you with the skills and\n"),
        TextSpan(
            text: "insights needed to thrive in today's fast-paced world\n"),
      ]),
    );
  }
}
