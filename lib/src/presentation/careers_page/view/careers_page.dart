import 'package:cas_website/src/presentation/careers_page/view/careers%20page%20banner%20section/careers_page_banner.dart';
import 'package:cas_website/src/presentation/careers_page/view/careers_page_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CareersPage extends StatelessWidget {
  const CareersPage({super.key});
  static const pageAddress = 'careers';
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CareersPageAppBar(
        context: context,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CareersPageBannerWidget(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.1),
              child: Text(
                'No Jobs Available',
                style: GoogleFonts.quicksand(
                  fontSize: width * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
