import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageBannerContent extends StatelessWidget {
  const HomePageBannerContent({super.key});

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
            HomePageBannerLeadingText(),
            HomePageBannerFollowingText(),
            HomePageBannerLearningButton(),
          ],
        ),
        Image.asset(
          'assets/images/home_page_banner_image.png',
          width: width * 0.5,
        )
      ],
    );
  }
}

class HomePageBannerLeadingText extends StatelessWidget {
  const HomePageBannerLeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.03,
      color: ApplicationColors.lightBlueThemeColor,
      fontWeight: FontWeight.bold,
    );

    return Padding(
      padding: EdgeInsets.only(left: width * 0.03, bottom: width * 0.01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Transforming Challenges', style: textStyle),
          Text('into IT Solutions', style: textStyle),
        ],
      ),
    );
  }
}

class HomePageBannerFollowingText extends StatelessWidget {
  const HomePageBannerFollowingText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
        fontSize: width * 0.013,
        color: ApplicationColors.appBlackTextColor,
        fontWeight: FontWeight.bold);
    return Text(
      'Complex Development Challenges? We turn them \ninto easy Solutions',
      overflow: TextOverflow.clip,
      style: textStyle,
    );
  }
}

class HomePageBannerLearningButton extends StatelessWidget {
  const HomePageBannerLearningButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
        fontSize: width * 0.01,
        color: ApplicationColors.appBlackTextColor,
        fontWeight: FontWeight.bold);
    return Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: InkWell(
        onTap: () => context.go('/${AcademyPage.pageAddress}'),
        highlightColor: ApplicationColors.transparentColor,
        hoverColor: ApplicationColors.transparentColor,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: ApplicationColors.appWhiteTextColor,
              borderRadius: BorderRadius.circular(width * 0.04)),
          child: Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: Text(
              " Join our Learning Community ",
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
