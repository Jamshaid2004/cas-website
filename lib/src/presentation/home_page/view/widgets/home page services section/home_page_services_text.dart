import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageServicesTitleText extends StatelessWidget {
  const HomePageServicesTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.all(width * 0.03),
      child: Text(
        'Our Services',
        style: textStyle,
      ),
    );
  }
}

class HomePageServicesSubTitleText extends StatelessWidget {
  const HomePageServicesSubTitleText({super.key});

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
            'Determine your path to success with our innovative solutions and',
            style: textStyle,
          ),
          SizedBox(height: width * 0.005),
          Text(
            'expert guidance tailored to your unique needs',
            style: textStyle,
          )
        ],
      ),
    );
  }
}
