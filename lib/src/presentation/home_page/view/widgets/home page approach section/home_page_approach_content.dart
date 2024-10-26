import 'package:cas_website/core/bavel.dart';

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
        Container(color: Colors.transparent),
        Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: DottedBorder(
            borderType: BorderType.Circle,
            color: Colors.blue,
            child: SizedBox(
              width: width * 0.3,
              height: width * 0.3,
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.5),
              boxShadow: const [
                BoxShadow(
                    color: ApplicationColors.appGreyTextColor, blurRadius: 6),
              ],
              color: ApplicationColors.appWhiteTextColor),
          child: SizedBox(
            width: width * 0.1,
            height: width * 0.1,
          ),
        ),
        Image.asset(
          'assets/images/cas_logo_two.png',
          width: width * 0.07,
          height: width * 0.07,
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(0.0, -0.9),
            child: Image.asset(
              'assets/images/approach_security.png',
              width: width * 0.07,
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(0.6, -0.95),
            child: HomePageApproachDiagramDescriptionWidget(
              title: 'Security',
              description:
                  'Our expert security services are designed to safeguard your\ndata, from evolving threats.',
              axisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(0.3, -0.3),
            child: Image.asset(
              'assets/images/approach_architecture.png',
              width: width * 0.07,
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(0.8, -0.3),
            child: HomePageApproachDiagramDescriptionWidget(
              title: 'Architecture',
              description:
                  'We specialize in delivering comprehensive analystics\nservices that empower businesses to make informed\n decisions and drive growth.',
              axisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(0.18, 0.75),
            child: Image.asset(
              'assets/images/approach_development.png',
              width: width * 0.07,
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(0.8, 0.7),
            child: HomePageApproachDiagramDescriptionWidget(
              title: 'Development',
              description:
                  'Our experienced developers use modern technologies to\nbuild scalable, efficient applications tailored to your needs.',
              axisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(-0.18, 0.75),
            child: Image.asset(
              'assets/images/approach_development.png',
              width: width * 0.07,
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(-0.8, 0.7),
            child: HomePageApproachDiagramDescriptionWidget(
              title: 'Testing',
              description:
                  'Our Testing service ensures the highest quality and reliability\nof your software through rigorous and comprehensive \ntesting processes.',
              axisAlignment: CrossAxisAlignment.end,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(-0.3, -0.3),
            child: Image.asset(
              'assets/images/approach_ux.png',
              width: width * 0.07,
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(-0.8, -0.3),
            child: HomePageApproachDiagramDescriptionWidget(
              title: 'Design',
              description:
                  'Our Design service focuses on creating intuitive and\nengaging user interfaces that enhance the overall \nuser experience.',
              axisAlignment: CrossAxisAlignment.end,
            ),
          ),
        ),
      ],
    );
  }
}

class HomePageApproachDiagramDescriptionWidget extends StatelessWidget {
  final String title;
  final String description;
  final CrossAxisAlignment axisAlignment;
  const HomePageApproachDiagramDescriptionWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.axisAlignment});
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: axisAlignment,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ApplicationColors.appBlackTextColor,
            fontWeight: FontWeight.bold,
            fontSize: width * 0.015,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            description,
            style: TextStyle(
              fontSize: width * 0.01,
              color: ApplicationColors.appGreyTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
