import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePageCoursesTitleText extends StatelessWidget {
  const ServicePageCoursesTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.01, top: width * 0.01),
      child: Text(
        'Explore Our Services',
        style: textStyle,
      ),
    );
  }
}

class ServicePageCoursesSubTitleText extends StatelessWidget {
  const ServicePageCoursesSubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.appGreyTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.03),
      child: Text(
        "Transform ideas into Action",
        style: textStyle,
      ),
    );
  }
}
