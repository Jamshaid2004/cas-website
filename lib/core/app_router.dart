import 'bavel.dart';

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
