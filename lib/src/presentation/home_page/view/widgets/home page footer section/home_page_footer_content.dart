import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageFooterContent extends StatelessWidget {
  const HomePageFooterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HomePageFooterContentHeader(),
        HomePageFooterContentBody(),
      ],
    );
  }
}

class HomePageFooterContentHeader extends StatelessWidget {
  const HomePageFooterContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    final subTitleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.appGreyTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.03, top: width * 0.2),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: width * 0.01),
            child: Text(
              'Get Started with us',
              style: textStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: width * 0.03),
            child: Text(
              'Development can be complex!! We can make it easier for you',
              style: subTitleTextStyle,
            ),
          ),
          AppButton(
              onTap: () {},
              buttonText: '  Contact us  ',
              textSize: width * 0.01)
        ],
      ),
    );
  }
}

class HomePageFooterContentBody extends StatelessWidget {
  const HomePageFooterContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CASCreditsWidget(),
          CompanyCreditsWidget(),
          ServicesCreditsWidget(),
          OurCommunityCreditsWidget(),
        ],
      ),
    );
  }
}

class CASCreditsWidget extends StatelessWidget {
  const CASCreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final subTitleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.012,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.w400,
    );
    final titleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.015,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.02,
            right: width * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.5),
                        boxShadow: const [
                          BoxShadow(
                              color: ApplicationColors.appGreyTextColor,
                              blurRadius: 6),
                        ],
                        color: ApplicationColors.appWhiteTextColor),
                    child: SizedBox(
                      width: width * 0.05,
                      height: width * 0.05,
                    ),
                  ),
                  Image.asset(
                    'assets/images/cas_logo_two.png',
                    width: width * 0.04,
                    height: width * 0.04,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.01),
                child: Text(
                  'Center for Advance Solutions',
                  style: titleTextStyle,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.015),
          child: Text(
            'Provide innovative solutions designed to address\ncomplex challenges in various fields. Combining\ncutting-edge research, to deiever tailored strategies.',
            style: subTitleTextStyle,
          ),
        ),
      ],
    );
  }
}

class CompanyCreditsWidget extends StatelessWidget {
  const CompanyCreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final titleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.015,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    final subTitleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.012,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.w400,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: width * 0.03, left: width * 0.005, right: width * 0.005),
          child: Text('Company', style: titleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('About us', style: subTitleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('Careers', style: subTitleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('Contact us', style: subTitleTextStyle),
        ),
      ],
    );
  }
}

class ServicesCreditsWidget extends StatelessWidget {
  const ServicesCreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final titleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.015,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    final subTitleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.012,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.w400,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: width * 0.03, left: width * 0.005, right: width * 0.005),
          child: Text('Services', style: titleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('Mobile Apps', style: subTitleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('Web Apps', style: subTitleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('Software Solutions', style: subTitleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
          child: Text('DevOps', style: subTitleTextStyle),
        ),
      ],
    );
  }
}

class OurCommunityCreditsWidget extends StatelessWidget {
  const OurCommunityCreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final titleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.015,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    final subTitleTextStyle = GoogleFonts.quicksand(
      fontSize: width * 0.012,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.w400,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: width * 0.03, left: width * 0.005, right: width * 0.005),
          child: Text('Join Our Learning Community', style: titleTextStyle),
        ),
        Padding(
          padding: EdgeInsets.all(width * 0.005),
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
                  style: subTitleTextStyle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
