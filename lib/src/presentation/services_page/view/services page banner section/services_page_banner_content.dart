import 'package:cas_website/core/bavel.dart';

class ServicesPageBannerContent extends StatelessWidget {
  const ServicesPageBannerContent({super.key});

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
            ServicesPageBannerLeadingText(),
            ServicesPageBannerFollowingText(),
          ],
        ),
        Image.asset(
          'assets/images/banner_image_services_page.png',
          width: width * 0.2,
        ),
      ],
    );
  }
}

class ServicesPageBannerLeadingText extends StatelessWidget {
  const ServicesPageBannerLeadingText({super.key});

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
          Text('Elevate Your Experience', style: textStyle),
          Text('with Our Expert Services', style: textStyle),
        ],
      ),
    );
  }
}

class ServicesPageBannerFollowingText extends StatelessWidget {
  const ServicesPageBannerFollowingText({super.key});

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
        TextSpan(text: "Discover a range of tailored services designed\n"),
        TextSpan(text: "to enhance your journey. OUr expert team is\n"),
        TextSpan(text: "dedicated to delievering exceptional results\n"),
        TextSpan(text: "that exceed your expectations.\n"),
      ]),
    );
  }
}
