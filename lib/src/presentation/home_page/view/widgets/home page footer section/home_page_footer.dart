import 'package:cas_website/core/bavel.dart';

class HomePageFooterSectionWidget extends StatelessWidget {
  const HomePageFooterSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            HomePageFooterBackground(),
            HomePageFooterContent(),
          ],
        ),
      ],
    );
  }
}

class HomePageFooterTrackRecordText extends StatelessWidget {
  const HomePageFooterTrackRecordText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(width * 0.05),
      child: Text(
        'with a proven track record of excellence',
        style: GoogleFonts.quicksand(fontSize: width * 0.025),
      ),
    );
  }
}
