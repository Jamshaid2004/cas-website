import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer_background.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20footer%20section/home_page_footer_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
