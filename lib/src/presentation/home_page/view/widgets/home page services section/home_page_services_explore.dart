import 'package:cas_website/core/bavel.dart';

class HomePageServicesExploreMoreButton extends StatelessWidget {
  const HomePageServicesExploreMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.01),
      child: AppButton(
          onTap: () => context.go('/${ServicesPage.pageAddress}'),
          buttonText: 'Explore More',
          textSize: 13),
    );
  }
}
