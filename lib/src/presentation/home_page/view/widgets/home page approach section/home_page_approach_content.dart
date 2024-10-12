import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageApproachContent extends StatelessWidget {
  const HomePageApproachContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePageApproachTitleText(),
        HomePageApproachSubTitleText(),
        HomePageApproachDiagramWidget(),
      ],
    );
  }
}

class HomePageApproachTitleText extends StatelessWidget {
  const HomePageApproachTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.03, top: width * 0.1),
      child: Text(
        'Right Approach , Right Results',
        style: textStyle,
      ),
    );
  }
}

class HomePageApproachSubTitleText extends StatelessWidget {
  const HomePageApproachSubTitleText({super.key});
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.appGreyTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Determine the right approach to efffectively overcome challenges through tailored strategies',
            style: textStyle,
          ),
          SizedBox(height: width * 0.005),
          Text(
            'and collaborative solutions.',
            style: textStyle,
          )
        ],
      ),
    );
  }
}

class HomePageApproachDiagramWidget extends StatelessWidget {
  const HomePageApproachDiagramWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.5),
              color: ApplicationColors.appWhiteTextColor),
          child: SizedBox(
            width: width * 0.3,
            height: width * 0.3,
          ),
        ),
        Image.asset(
          'assets/images/cas_logo_two.png',
          width: width * 0.1,
        )
      ],
    );
  }
}
