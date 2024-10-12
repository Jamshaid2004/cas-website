import 'package:cas_website/core/app_router.dart';
import 'package:cas_website/core/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CAS Website',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ApplicationTheme.getInstance(),
      routerConfig: AppRouter.router,
    );
  }
}
