import 'package:cas_website/core/bavel.dart';

class AcademyPageCoursesListWidget extends StatelessWidget {
  const AcademyPageCoursesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_android_app_dev.png',
                courseTitle: 'Android App Development',
                courseDescription:
                    "In our Android development course, you will gain\n in-depth knowledge of building applications for\n the Android platform. You’ll start by mastering\n Android Studio, the official Integrated\n Development Environment (IDE), and learn\n programming languages like Java and Kotlin to\n develop robust applications. The course focuses\n on user interface design, teaching you how to\n create attractive and responsive layouts using\n XML and Android's design principles. You'll also\n explore data storage and management\n techniques, including how to use SQLite.",
              ),
            ),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_mobile_app_dev.png',
                courseTitle: 'Mobile App Development',
                courseDescription:
                    "In our app development course, you will acquire\n the foundational knowledge and skills to create\n innovative mobile applications. You’ll learn about\n the principles of mobile app development,\n focusing on user interface (UI) and user\n experience (UX) design to create engaging and\n intuitive applications. The course covers\n essential programming languages like Swift for\n iOS and Java or Kotlin for Android. You’ll also\n explore the importance of APIs, learning how to\n connect your app to external services to\n enhance its functionality.",
              ),
            ),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_game_dev.png',
                courseTitle: 'Unity Game Development',
                courseDescription:
                    "In our Android development course, you will gain\n in-depth knowledge of building applications for\n the Android platform. You’ll start by mastering\n Android Studio, the official Integrated\n Development Environment (IDE), and learn\n programming languages like Java and Kotlin to\n develop robust applications. The course focuses\n on user interface design, teaching you how to\n create attractive and responsive layouts using\n XML and Android's design principles. You'll also\n explore data storage and management\n techniques, including how to use SQLite.",
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
        Row(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_blockchain_dev.png',
                courseTitle: 'Blockchain Development',
                courseDescription:
                    "This course offers a thorough introduction to\n blockchain tecnology, its underlyin principles,\n and its diverse applications. Participants will\n explore the mechanics of blockchain, its\n potential to transform industries, and the\n challenges associated with its implementation.\n By the end of the course, students will have a\n solid foundation in blockchain concepts and be\n equipped to engage with this emerging \n technology.",
              ),
            ),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_ai_dev.png',
                courseTitle: 'Artificial Intelligence',
                courseDescription:
                    "This course provides a comprehensive\n introduction to the field of artificial intelligence.\n Students will explore foundational concepts. Key\n technologies, and practical applications of AI\n across various industries. By the end of the \n course, participants will have a solid \n understanding of AI principles and the ability to \n critically assess its implications in society.",
              ),
            ),
            Expanded(
              flex: 5,
              child: AcademyPageCourseWidget(
                courseImage: 'assets/images/course_website_dev.png',
                courseTitle: ' Website  Development ',
                courseDescription:
                    "In our website development course, you will\n learn the essential skills needed to create\n stunning, functional websites. You'll start with\n the basics of HTML and CSS to build structured\n and styled web pages. As you progress, you’ll\n dive into JavaScript to add interactivity and\n dynamic features. The course covers responsive\n design techniques to ensure your websites look\n great on any device. You'll also explore popular\n frameworks like Bootstrap  to streamline your\n develop ment process.",
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ],
    );
  }
}

class AcademyPageCourseWidget extends StatelessWidget {
  const AcademyPageCourseWidget(
      {super.key,
      required this.courseImage,
      required this.courseTitle,
      required this.courseDescription});
  final String courseImage;
  final String courseTitle;
  final String courseDescription;
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final titleTextStyle = GoogleFonts.quicksand(
      color: ApplicationColors.appBlackTextColor,
      fontSize: width * 0.02,
      fontWeight: FontWeight.bold,
    );
    final subTitleTextStyle = GoogleFonts.quicksand(
      color: ApplicationColors.appGreyTextColor,
      fontSize: width * 0.01,
    );
    return Padding(
      padding: EdgeInsets.all(width * 0.01),
      child: InkWell(
        hoverColor: ApplicationColors.lightBlueThemeColor,
        focusColor: ApplicationColors.lightBlueThemeColor,
        child: Container(
          color: ApplicationColors.lightBlueThemeColor.withAlpha(30),
          child: Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: SizedBox(
              height: width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    courseImage,
                    width: width * 0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      child: Text(
                        courseTitle,
                        style: titleTextStyle,
                      ),
                    ),
                  ),
                  Text(
                    courseDescription,
                    style: subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
