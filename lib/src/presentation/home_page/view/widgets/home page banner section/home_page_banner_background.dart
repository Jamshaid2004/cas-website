import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';

class HomePageBannerBackground extends StatelessWidget {
  const HomePageBannerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return ClipPath(
      clipper: BodyBannerBackgroundClipper(),
      child: Container(
        width: width,
        height: height - kToolbarHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ApplicationColors.appWhiteTextColor,
              ApplicationColors.bodyBannerColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

class BodyBannerBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var Size(:width, :height) = size;
    Path path = Path();
    path.lineTo(0, height * 0.7);
    path.conicTo(width * 0.7, height, width, height * 0.75, 2);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return oldClipper.toString() != toString();
  }
}
