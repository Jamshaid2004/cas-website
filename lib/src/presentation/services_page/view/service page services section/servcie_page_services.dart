import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/service_page_services_list.dart';
import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/service_page_services_title.dart';
import 'package:flutter/material.dart';

class ServciePageServicesWidget extends StatelessWidget {
  const ServciePageServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.1),
      child: const Column(
        children: [
          ServicePageCoursesTitleText(),
          ServicePageCoursesSubTitleText(),
          ServicePageCoursesListWidget(),
        ],
      ),
    );
  }
}
