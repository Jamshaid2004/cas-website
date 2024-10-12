import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static const pageAddress = 'about';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('About Page')),
    );
  }
}
