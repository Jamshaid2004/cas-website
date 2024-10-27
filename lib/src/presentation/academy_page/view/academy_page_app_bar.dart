import 'package:cas_website/core/bavel.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page_sign_in_dialog.dart';

class AcademyPageAppBar extends AppBar {
  final BuildContext context;
  AcademyPageAppBar({super.key, required this.context})
      : super(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => context.pop(),
                  child: Image.asset(
                    'assets/images/cas_logo_two.png',
                    width: kTextTabBarHeight,
                  ),
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
                    ],
                  )
                ],
              ),
              Builder(
                builder: (context) {
                  return AppButton(
                    buttonText: ' Join Meeting ',
                    textSize: 13,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: signInDialog,
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
