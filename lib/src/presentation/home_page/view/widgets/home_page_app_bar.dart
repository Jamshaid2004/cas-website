import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/core/app_snack_bar.dart';
import 'package:cas_website/src/presentation/about_page/view/about_page.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page.dart';
import 'package:cas_website/src/presentation/careers_page/view/careers_page.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page.dart';
import 'package:cas_website/src/presentation/services_page/view/services_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
