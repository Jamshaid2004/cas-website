import 'package:cas_website/src/presentation/academy_page/view/academy%20page%20courses%20section/academy_page_courses_list.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy%20page%20courses%20section/academy_page_courses_title.dart';
import 'package:flutter/material.dart';

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
