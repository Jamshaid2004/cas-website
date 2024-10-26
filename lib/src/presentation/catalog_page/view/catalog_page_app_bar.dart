import 'package:cas_website/core/bavel.dart';

class CatalogPageAppBar extends AppBar {
  //....INSTANCE MEMEBERS
  final BuildContext context;
  //....CONSTANTS
  static const logo = 'assets/images/cas_logo_two.png';
  static const services = 'Services';
  static const academy = 'Academy';
  static const about = 'About';
  static const careers = 'Careers';
  static const btnText = '   Contact Us   ';
  CatalogPageAppBar({super.key, required this.context})
      : super(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => context.go('/${HomePage.pageAddress}'),
                  child: Image.asset(
                    logo,
                    width: kTextTabBarHeight,
                  ),
                ),
              ),
              Row(
                children: [
                  OverflowBar(
                    children: [
                      HomePageToolBarItemWidget(
                          text: services,
                          onPressed: () =>
                              context.go('/${ServicesPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: academy,
                          onPressed: () =>
                              context.go('/${AcademyPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: about,
                          onPressed: () =>
                              context.go('/${AboutPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: careers,
                          onPressed: () =>
                              context.go('/${CareersPage.pageAddress}')),
                    ],
                  )
                ],
              ),
              Builder(
                builder: (context) {
                  return AppButton(
                    buttonText: btnText,
                    textSize: 13,
                    onTap: () {
                      ApplicationSnackBar.getSnackBar(
                        context: context,
                        text: 'Contact us clicked',
                      );
                    },
                  );
                },
              ),
            ],
          ),
          toolbarHeight: kToolbarHeight,
          backgroundColor: ApplicationColors.appWhiteTextColor,
          surfaceTintColor: ApplicationColors.appWhiteTextColor,
        );
}
