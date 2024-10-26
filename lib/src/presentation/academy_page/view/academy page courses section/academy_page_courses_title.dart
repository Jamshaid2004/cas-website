import 'package:cas_website/core/bavel.dart';

class AcademyPageCoursesTitleText extends StatelessWidget {
  const AcademyPageCoursesTitleText({super.key});

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
        'Discover our Courses',
        style: textStyle,
      ),
    );
  }
}

class AcademyPageCoursesSubTitleText extends StatelessWidget {
  const AcademyPageCoursesSubTitleText({super.key});

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
