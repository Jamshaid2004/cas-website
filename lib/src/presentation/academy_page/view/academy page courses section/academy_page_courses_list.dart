import 'dart:developer';

import 'package:cas_website/core/academy_courses.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';

class AcademyPageCoursesListWidget extends StatefulWidget {
  const AcademyPageCoursesListWidget({super.key});

  @override
  State<AcademyPageCoursesListWidget> createState() =>
      _AcademyPageCoursesListWidgetState();
}

class _AcademyPageCoursesListWidgetState
    extends State<AcademyPageCoursesListWidget> {
  late ScrollController controller;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    double scroll = 0;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: height * 0.8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: coursesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: Container(
                  width: width * 0.25,
                  color: ApplicationColors.coursesBackgroundColor,
                  child: SizedBox(
                    width: width * 0.2,
                    height: width * 0.2,
                    child: Image.asset(
                      'assets/images/course_android_app_dev.png',
                      width: width * 0.25,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: SizedBox(
              width: width * 0.05,
              child: InkWell(
                onTap: () {
                  scroll += 0.28;
                  log('scroll $scroll');
                  controller.animateTo(width * scroll,
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: Container(
                  width: width * 0.05,
                  height: width * 0.05,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: ApplicationColors.lightGreyColor)
                    ],
                    gradient: LinearGradient(
                      colors: [
                        ApplicationColors.appWhiteTextColor,
                        ApplicationColors.lightBlueThemeColor,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: SizedBox(
              width: width * 0.05,
              child: InkWell(
                onTap: () {
                  double temp = scroll - 0.28;
                  if (temp > 0) {
                    scroll = temp;
                    log('scroll $scroll');
                  }
                  controller.animateTo(width * scroll,
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                },
                child: Container(
                  width: width * 0.05,
                  height: width * 0.05,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: ApplicationColors.lightGreyColor)
                    ],
                    gradient: LinearGradient(
                      colors: [
                        ApplicationColors.appWhiteTextColor,
                        ApplicationColors.lightBlueThemeColor,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
