import 'package:cas_website/core/bavel.dart';

class AcademyPageCoursesWidget extends StatelessWidget {
  const AcademyPageCoursesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.1),
      child: const Column(
        children: [
          AcademyPageCoursesTitleText(),
          AcademyPageCoursesSubTitleText(),
          AcademyPageCoursesListWidget(),
        ],
      ),
    );
  }
}
