import 'package:cas_website/src/presentation/about_page/view/about_page.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page.dart';
import 'package:cas_website/src/presentation/careers_page/view/careers_page.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page.dart';
import 'package:cas_website/src/presentation/home_page/view/home_page.dart';
import 'package:cas_website/src/presentation/services_page/view/services_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: HomePage.pageAddress,
        builder: (context, state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: CareersPage.pageAddress,
            builder: (context, state) => const CareersPage(),
          ),
          GoRoute(
            path: AboutPage.pageAddress,
            builder: (context, state) => const AboutPage(),
          ),
          GoRoute(
            path: CatalogPage.pageAddress,
            builder: (context, state) => const CatalogPage(),
          ),
          GoRoute(
            path: ServicesPage.pageAddress,
            builder: (context, state) => const ServicesPage(),
          ),
          GoRoute(
            path: AcademyPage.pageAddress,
            builder: (context, state) => const AcademyPage(),
          ),
        ])
  ]);
}
