import 'package:cas_website/core/bavel.dart';

class HomePageAppBar extends AppBar {
  final BuildContext context;
  HomePageAppBar({super.key, required this.context})
      : super(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/cas_logo_two.png',
                  width: kTextTabBarHeight,
                ),
              ),
              Row(
                children: [
                  OverflowBar(
                    children: [
                      HomePageToolBarItemWidget(
                          text: 'Services',
                          onPressed: () =>
                              context.go('/${ServicesPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'Catalog',
                          onPressed: () =>
                              context.go('/${CatalogPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'About',
                          onPressed: () =>
                              context.go('/${AboutPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'Careers',
                          onPressed: () =>
                              context.go('/${CareersPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'Academy',
                          onPressed: () =>
                              context.go('/${AcademyPage.pageAddress}')),
                    ],
                  )
                ],
              ),
              Builder(builder: (context) {
                return AppButton(
                  buttonText: '  Contact Us  ',
                  textSize: 13,
                  onTap: () {
                    ApplicationSnackBar.getSnackBar(
                      context: context,
                      text: 'Contact us Clicked',
                    );
                  },
                );
              }),
            ],
          ),
          toolbarHeight: kToolbarHeight,
          backgroundColor: ApplicationColors.appWhiteTextColor,
          surfaceTintColor: ApplicationColors.appWhiteTextColor,
        );
}

class HomePageToolBarItemWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const HomePageToolBarItemWidget(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            style: GoogleFonts.quicksand(
              color: ApplicationColors.appBlackTextColor,
              fontSize: 15,
            )),
      ),
    );
  }
}
