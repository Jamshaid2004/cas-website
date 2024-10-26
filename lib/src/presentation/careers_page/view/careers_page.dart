import 'package:cas_website/core/bavel.dart';

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
